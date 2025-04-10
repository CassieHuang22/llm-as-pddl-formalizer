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

from transformers import AutoModelForCausalLM, BitsAndBytesConfig

quantization_config = BitsAndBytesConfig(load_in_8bit=True)

Parser = argparse.ArgumentParser()
Parser.add_argument("--domain", help="which domain to evaluate", choices=["blocksworld", "mystery_blocksworld", "barman", "logistics"])
Parser.add_argument("--model", help="which model to use", choices=["gpt-3.5-turbo", "gpt-4o-mini", "gpt-4o", "o1-preview", "google/gemma-2-9b-it", "google/gemma-2-27b-it", "meta-llama/Meta-Llama-3.1-8B-Instruct", "meta-llama/Llama-3.1-70B-Instruct", "meta-llama/Llama-3.1-405B-Instruct", "meta-llama/Llama-3.3-70B-Instruct", "deepseek-ai/DeepSeek-R1-Distill-Qwen-32B", "deepseek-ai/DeepSeek-R1-Distill-Llama-70B", "o3-mini", "deepseek-ai/DeepSeek-R1-Distill-Llama-8B", "deepseek-reasoner"])
Parser.add_argument("--data", help="which data to formalize", choices=[ "Heavily_Templated_Mystery_BlocksWorld-100", "Heavily_Templated_Barman-100", "Heavily_Templated_Logistics-100", "Moderately_Templated_Logistics-100", "Natural_Logistics-100", "Heavily_Templated_BlocksWorld-100", "Moderately_Templated_BlocksWorld-100", "Natural_BlocksWorld-100"])
Parser.add_argument("--index_start", help="index to start generating result from (inclusive)")
Parser.add_argument("--index_end", help="index to end generating result from (exclusive)")

args = Parser.parse_args()
DOMAIN = args.domain
MODEL = args.model
DATA = args.data
INDEX_START = eval(args.index_start)
INDEX_END = eval(args.index_end)

OPEN_SOURCED_MODELS = ["meta-llama/Meta-Llama-3.1-8B-Instruct", "google/gemma-2-9b-it", "meta-llama/Llama-3.1-70B-Instruct", "google/gemma-2-27b-it", "meta-llama/Llama-3.1-405B-Instruct", "meta-llama/Llama-3.3-70B-Instruct", "deepseek-ai/DeepSeek-R1-Distill-Qwen-32B", "deepseek-ai/DeepSeek-R1-Distill-Llama-70B", "deepseek-ai/DeepSeek-R1-Distill-Llama-8B"]
PROMPT = "Respond only as shown."
if MODEL in OPEN_SOURCED_MODELS:
    if "meta-llama" in MODEL:
        ENGINE = HuggingEngine(model_id = MODEL, prompt_pipeline=LLAMA3_PIPELINE, use_auth_token=True, model_load_kwargs={"device_map": "auto", "quantization_config": quantization_config})
    elif "gemma" in MODEL:
        ENGINE = HuggingEngine(model_id = MODEL, prompt_pipeline=GEMMA_PIPELINE, use_auth_token=True)
    elif "deepseek-ai" in MODEL:
        ENGINE = HuggingEngine(model_id = MODEL, prompt_pipeline=None, use_auth_token=True)
    AI = Kani(ENGINE, system_prompt=PROMPT)
else:
    if MODEL == "deepseek-reasoner":
        OPENAI_API_KEY = open('../../_private/key_deepseek.txt').read()
        client = OpenAI(api_key=OPENAI_API_KEY, base_url="https://api.deepseek.com")
    else:
        OPENAI_API_KEY = open(f'../../_private/key.txt').read()
        client = OpenAI(api_key=OPENAI_API_KEY)


def run_planner_gpt(domain, data, problem, model, force_json=False):
    output_format = "json_object" if force_json else "text"


    domain_description = open(f'../data/textual_{domain}/{data}/{problem}_domain.txt').read()
    problem_description = open(f'../data/textual_{domain}/{data}/{problem}_problem.txt').read()

    if domain == "blocksworld":
        available_actions = '(PICK-UP block): pick up a block from the table\n(PUT-DOWN block): put down a block on the table\n(STACK block1 block2): stack block1 onto block2\n(UNSTACK block1 block2): unstack block1 from block2'
        example_answer = '(PICK-UP A)\n(STACK A B)\n(UNSTACK A B)\n(PUT-DOWN A)\n'
    elif domain == "mystery_blocksworld":
        available_actions = '(ATTACK object): attack object\n(SUCCUMB object): succumb\n(OVERCOME object1 object2): overcome object1 from object2\n(FEAST object1 object2): feast object1 from object2'
        example_answer = '(ATTACK A)\n(OVERCOME A B)\n(FEAST A B)\n(SUCCUMB A)\n'
    elif domain == "barman":
        available_actions = '(GRASP hand container): grasp container with hand\n(LEAVE hand container): leave container with hand\n(FILL-SHOT shot ingredient hand1 hand2 dispenser): fill shot with ingredient from dispenser using hand1 and hand2\n(REFILL-SHOT shot ingredient hand1 hand2 dispenser): re-fill shot with ingredient from dispenser using hand1 and hand2\n(EMPTY-SHOT hand shot beverage): empty shot containing beverage with hand\n(CLEAN-SHOT shot beverage hand1 hand2): clean shot containing beverage using hand1 and hand2\n(POUR-SHOT-TO-CLEAN-SHAKER shot ingredient shaker hand level level1): pour shot containing ingredient into clean shaker using hand so that the level in the shaker changes from level to level1\n(POUR=SHOT-TO-USED-SHAKER shot ingredient shaker hand level level1): pour shot containing ingredient into used shaker using hand so that the level in the shaker changes from level to level1\n(EMPTY-SHAKER hand shaker cocktail level level1): empty shaker containing cocktail with hand so that the level in the shaker changes from level to level1\n(CLEAN-SHAKER hand1 hand2 shaker): clean shaker using hand1 and hand2\n(SHAKE cocktail ingredient1 ingredient2 shaker hand1 hand2): shake shaker containing cocktail of ingredient1 and ingredient2 using hand1 and hand2\n(POUR-SHAKER-TO-SHOT beverage shot hand shaker level level1): pour shaker containing beverage into shot using hand so that the level in the shaker changes from level to level1'
        example_answer = '(GRASP right shot1)\n(FILL-SHOT shot1 ingredient10 right left dispenser10)\n(POUR-SHOT-TO-CLEAN-SHAKER shot1 ingredient10 shaker1 right l0 l1)\n(CLEAN-SHOT shot1 ingredient10 right left)\n(FILL-SHOT shot1 ingredient5 right left dispenser5)\n(GRASP left shaker1)\n(POUR-SHOT-TO-USED-SHAKER shot1 ingredient5 shaker1 right l1 l2)\n(LEAVE right shot1)\n(SHAKE cocktail1 ingredient5 ingredient10 shaker1 left right)\n(LEAVE left shaker1)\n(GRASP left shot1)\n(CLEAN-SHOT shot1 ingredient5 left right)\n(GRASP right shaker1)\n(POUR-SHAKER-TO-SHOT cocktail1 shot1 right shaker1 l2 l1)'
    elif domain == "logistics":
        available_actions = '(load-truck package truck location): load a package onto a truck at a location\n(load-airplane object airplane location): load a package onto an airplane at a location\n(unload-truck package truck location): unload a package from a truck at a location\n(unload-airplane package airplane location): unload a package from an airplan at a location\n(drive-truck truck location1 location2 city): drive a truck from location1 to location2 in a city\n(fly-airplane airplane location1 location2): fly an airplane from location1 to location2'
        example_answer = """(load-truck package truck city1-1)
        (drive-truck truck city1-1 city1-2 city1)
        (unload-truck package truck city1-2)
        (load-airplane package plane city1-2)
        (fly-airplane plane city1-2 city2-1)
        (unload-airplane package plane city2-1)"""
    prompt = f"Here is a game we are playing.\n\n{domain_description}\n\n{problem_description}\n\nWrite the plan that would solve this problem.\n\nThese are the available actions:\n{available_actions}\n\nHere is what the output should look like:\n{example_answer}\n"
    message = prompt + "The output should be a list of strings written inside a JSON object in the following format:\n{\n  \"plan\": ...,\n}"


    completion = client.chat.completions.create(
        model=model,
        messages=[
        {"role": "user", "content": message}
        ],
        response_format = {"type": output_format}
    )

    return_string = completion.choices[0].message.content

    if model in ['o1-preview', 'deepseek-reasoner']:
        start_index = return_string.find('{')
        end_index = return_string.find('}')
        json_string = return_string[start_index:end_index+1]
        return_dict = json.loads(json_string, strict=False)
    else:
        return_dict = json.loads(return_string, strict=False)

    plan = return_dict['plan']


    plan_path = f'../output/llm-as-planner/{domain}/{data}/{model}/{problem}_{model}_plan.txt'
    

    if not os.path.exists(os.path.dirname(plan_path)):
        os.makedirs(os.path.dirname(plan_path))
        
    with open(plan_path, 'w') as file:
        for line in plan:
            file.write(f"{line}\n")
    
    return plan


async def run_planner_open_sourced(domain, data, problem):
    domain_description = open(f'../data/textual_{domain}/{data}/{problem}_domain.txt').read()
    problem_description = open(f'../data/textual_{domain}/{data}/{problem}_problem.txt').read()

    if domain == "blocksworld":
        available_actions = '(PICK-UP block): pick up a block from the table\n(PUT-DOWN block): put down a block on the table\n(STACK block1 block2): stack block1 onto block2\n(UNSTACK block1 block2): unstack block1 from block2'
        example_answer = 'PLAN:\n(PICK-UP A)\n(STACK A B)\n(UNSTACK A B)\n(PUT-DOWN A)\n'
    elif domain == "mystery_blocksworld":
        available_actions = '(ATTACK object): attack object\n(SUCCUMB object): succumb\n(OVERCOME object1 object2): overcome object1 from object2\n(FEAST object1 object2): feast object1 from object2'
        example_answer = 'PLAN:\n(ATTACK A)\n(OVERCOME A B)\n(FEAST A B)\n(SUCCUMB A)\n'
    elif domain == "barman":
        available_actions = '(GRASP hand container): grasp container with hand\n(LEAVE hand container): leave container with hand\n(FILL-SHOT shot ingredient hand1 hand2 dispenser): fill shot with ingredient from dispenser using hand1 and hand2\n(REFILL-SHOT shot ingredient hand1 hand2 dispenser): re-fill shot with ingredient from dispenser using hand1 and hand2\n(EMPTY-SHOT hand shot beverage): empty shot containing beverage with hand\n(CLEAN-SHOT shot beverage hand1 hand2): clean shot containing beverage using hand1 and hand2\n(POUR-SHOT-TO-CLEAN-SHAKER shot ingredient shaker hand level level1): pour shot containing ingredient into clean shaker using hand so that the level in the shaker changes from level to level1\n(POUR=SHOT-TO-USED-SHAKER shot ingredient shaker hand level level1): pour shot containing ingredient into used shaker using hand so that the level in the shaker changes from level to level1\n(EMPTY-SHAKER hand shaker cocktail level level1): empty shaker containing cocktail with hand so that the level in the shaker changes from level to level1\n(CLEAN-SHAKER hand1 hand2 shaker): clean shaker using hand1 and hand2\n(SHAKE cocktail ingredient1 ingredient2 shaker hand1 hand2): shake shaker containing cocktail of ingredient1 and ingredient2 using hand1 and hand2\n(POUR-SHAKER-TO-SHOT beverage shot hand shaker level level1): pour shaker containing beverage into shot using hand so that the level in the shaker changes from level to level1'
        example_answer = '(GRASP right shot1)\n(FILL-SHOT shot1 ingredient10 right left dispenser10)\n(POUR-SHOT-TO-CLEAN-SHAKER shot1 ingredient10 shaker1 right l0 l1)\n(CLEAN-SHOT shot1 ingredient10 right left)\n(FILL-SHOT shot1 ingredient5 right left dispenser5)\n(GRASP left shaker1)\n(POUR-SHOT-TO-USED-SHAKER shot1 ingredient5 shaker1 right l1 l2)\n(LEAVE right shot1)\n(SHAKE cocktail1 ingredient5 ingredient10 shaker1 left right)\n(LEAVE left shaker1)\n(GRASP left shot1)\n(CLEAN-SHOT shot1 ingredient5 left right)\n(GRASP right shaker1)\n(POUR-SHAKER-TO-SHOT cocktail1 shot1 right shaker1 l2 l1)'

    elif domain == "logistics":
        available_actions = '(load-truck package truck location): load a package onto a truck at a location\n(load-airplane object airplane location): load a package onto an airplane at a location\n(unload-truck package truck location): unload a package from a truck at a location\n(unload-airplane package airplane location): unload a package from an airplan at a location\n(drive-truck truck location1 location2 city): drive a truck from location1 to location2 in a city\n(fly-airplane airplane location1 location2): fly an airplane from location1 to location2'
        example_answer = """(load-truck package truck city1-1)
        (drive-truck truck city1-1 city1-2 city1)
        (unload-truck package truck city1-2)
        (load-airplane package plane city1-2)
        (fly-airplane plane city1-2 city2-1)
        (unload-airplane package plane city2-1)"""

    message = f"Here is a game we are playing.\n\n{domain_description}\n\n{problem_description}\n\nWrite the plan that would solve this problem.\n\nThese are the available actions:\n{available_actions}\n\nHere is what the output should look like:\n{example_answer}\n"

    message += "The output should be a list of strings written inside a JSON object in the following format:\n{\n  \"plan\": [\"...\",\"...\",...]\n}"

    response = await AI.chat_round_str(message)

    start_index = response.find('[')
    end_index = response.find(']')
    plan_string = response[start_index+1:end_index]
    plan = plan_string.replace('\"', "").replace(',', "")


    _, model_name = MODEL.split('/')
    plan_path = f'../output/llm-as-planner/{domain}/{data}/{model_name}/{problem}_{model_name}_plan.txt'
    

    if not os.path.exists(os.path.dirname(plan_path)):
        os.makedirs(os.path.dirname(plan_path))
    
    with open(plan_path, 'w') as file:
        file.write(plan)

    return response


def run_gpt_batch(domain, model, data, index_start, index_end):
    for problem_number in range(index_start, index_end):
        problem_name = 'p0' + str(problem_number) if problem_number < 10 else 'p' + str(problem_number)
        print(f"Running {problem_name}")
        force_json = True if model not in ["o1-preview", "deepseek-reasoner"] else False
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