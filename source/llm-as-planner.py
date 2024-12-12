from openai import OpenAI
import json
import os
import time

from kani import Kani
from kani.engines.huggingface import HuggingEngine
from kani.prompts.impl import LLAMA3_PIPELINE
from kani.prompts.impl import GEMMA_PIPELINE
import asyncio

import argparse

Parser = argparse.ArgumentParser()
Parser.add_argument("--domain", help="which domain to evaluate", choices=["blocksworld", "mystery_blocksworld"])
Parser.add_argument("--model", help="which model to use", choices=["gpt-3.5-turbo", "gpt-4o-mini", "gpt-4o", "o1-preview", "google/gemma-2-9b-it", "google/gemma-2-27b-it", "meta-llama/Meta-Llama-3.1-8B-Instruct", "meta-llama/Llama-3.1-70B-Instruct"])
Parser.add_argument("--data", help="which data to formalize", choices=["Heavily-Templated_BlocksWorld-111", "Moderately_Templated_BlocksWorld-111", "Natural_BlocksWorld-111", "Heavily_Templated_Mystery_BlocksWorld-100"])
Parser.add_argument("--index_start", help="index to start generating result from (inclusive)")
Parser.add_argument("--index_end", help="index to end generating result from (exclusive)")

args = Parser.parse_args()
DOMAIN = args.domain
MODEL = args.model
DATA = args.data
INDEX_START = eval(args.index_start)
INDEX_END = eval(args.index_end)

OPEN_SOURCED_MODELS = ["meta-llama/Meta-Llama-3.1-8B-Instruct", "google/gemma-2-9b-it", "meta-llama/Llama-3.1-70B-Instruct", "google/gemma-2-27b-it"]
PROMPT = "You are a PDDL expert."
if MODEL in OPEN_SOURCED_MODELS:
    if "llama" in MODEL:
        ENGINE = HuggingEngine(model_id = MODEL, prompt_pipeline=LLAMA3_PIPELINE, use_auth_token=True, model_load_kwargs={"device_map": "auto"})
    elif "gemma" in MODEL:
        ENGINE = HuggingEngine(model_id = MODEL, prompt_pipeline=GEMMA_PIPELINE, use_auth_token=True)
    AI = Kani(ENGINE, system_prompt=PROMPT)
else:
    OPENAI_API_KEY = open(f'../../../_private/key.txt').read()
    client = OpenAI(api_key=OPENAI_API_KEY)

def run_planner_gpt(domain, data, problem, model, force_json=False):
    output_format = "json_object" if force_json else "text"


    domain_description = open(f'../../data/textual_{domain}/{data}/{problem}_domain.txt').read()
    problem_description = open(f'../../data/textual_{domain}/{data}/{problem}_problem.txt').read()

    if domain == "blocksworld":
        available_actions = '(PICK-UP block): pick up a block from the table\n(PUT-DOWN block): put down a block on the table\n(STACK block1 block2): stack block1 onto block2\n(UNSTACK block1 block2): unstack block1 from block2'
        example_answer = '(PICK-UP A)\n(STACK A B)\n(UNSTACK A B)\n(PUT-DOWN A)\n'
    elif domain == "mystery_blocksworld":
        available_actions = '(ATTACK object): attack object\n(SUCCUMB object): succumb\n(OVERCOME object1 object2): overcome object1 from object2\n(FEAST object1 object2): feast object1 from object2'
        example_answer = '(ATTACK A)\n(OVERCOME A B)\n(FEAST A B)\n(SUCCUMB A)\n'

    prompt = f"Here is a game we are playing.\n\n{domain_description}\n\n{problem_description}\n\nWrite the plan that would solve this problem.\n\nThese are the available actions:\n{available_actions}\n\nHere is what the output should look like:\n{example_answer}\n"
    message = prompt + "The output should be written inside a JSON object in the following format:\n{\n  \"plan\": ...,\n}"


    completion = client.chat.completions.create(
        model=model,
        messages=[
        {"role": "user", "content": message}
        ],
        response_format = {"type": output_format}
    )

    return_string = completion.choices[0].message.content

    if model == 'o1-preview':
        start_index = return_string.find('{')
        end_index = return_string.find('}')
        json_string = return_string[start_index:end_index+1]
        return_dict = json.loads(json_string, strict=False)
    else:
        return_dict = json.loads(return_string, strict=False)

    plan = return_dict['plan']


    plan_path = f'../../output/llm-as-planner/{domain}/{data}/{model}/{problem}_{model}_plan.txt'
    

    if not os.path.exists(os.path.dirname(plan_path)):
        os.makedirs(os.path.dirname(plan_path))
        
    with open(plan_path, 'w') as file:
        file.write(plan)
    
    return plan


async def run_planner_open_sourced(domain, data, problem):
    domain_description = open(f'../../data/textual_{domain}/{data}/{problem}_domain.txt').read()
    problem_description = open(f'../../data/textual_{domain}/{data}/{problem}_problem.txt').read()

    message = f"Here is a game we are playing.\n{domain_description}\n{problem_description}\nWrite the domain and problem files in minimal PDDL."

    response = await AI.chat_round_str(message)

    

    _, model_name = MODEL.split('/')
    plan_path = f'../../output/llm-as-planner/{domain}/{data}/{model_name}/{problem}_{model_name}_plan.txt'
    

    if not os.path.exists(os.path.dirname(plan_path)):
        os.makedirs(os.path.dirname(plan_path))
    
    with open(plan_path, 'w') as file:
        file.write(response)

    return response


def run_gpt_batch(domain, model, data, index_start, index_end):
    for problem_number in range(index_start, index_end):
        problem_name = 'p0' + str(problem_number) if problem_number < 10 else 'p' + str(problem_number)
        force_json = True if model != "o1-preview" else False
        run_planner_gpt(domain=domain, data=data, problem=problem_name, model=model, force_json=force_json)

async def run_open_sourced_batch(domain, data, index_start, index_end):
    problem_names = ['p0' + str(problem) if problem < 10 else 'p' + str(problem) for problem in range(index_start, index_end)]
    tasks = [run_planner_open_sourced(domain, data, problem) for problem in problem_names]
    outputs = await asyncio.gather(*tasks)
    return outputs
    
if __name__=="__main__":
    if MODEL in OPEN_SOURCED_MODELS:
        asyncio.run(run_open_sourced_batch(domain=DOMAIN, data=DATA, index_start=INDEX_START, index_end=INDEX_END))
    else:
        run_gpt_batch(domain=DOMAIN, model=MODEL, data=DATA, index_start=INDEX_START, index_end=INDEX_END)