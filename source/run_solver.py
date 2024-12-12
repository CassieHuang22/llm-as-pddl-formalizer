import requests
import time
import pandas as pd
import os
import argparse

Parser = argparse.ArgumentParser()
Parser.add_argument("--domain", help="which domain to evaluate", choices=["blocksworld", "mystery_blocksworld"])
Parser.add_argument("--model", help="which model to use", choices=["gpt-3.5-turbo", "gpt-4o-mini", "gpt-4o", "o1-preview", "google/gemma-2-9b-it", "google/gemma-2-27b-it", "meta-llama/Meta-Llama-3.1-8B-Instruct", "meta-llama/Llama-3.1-70B-Instruct"])
Parser.add_argument("--data", help="which data to formalize", choices=["Heavily-Templated_BlocksWorld-111", "Moderately_Templated_BlocksWorld-111", "Natural_BlocksWorld-111", "Heavily_Templated_Mystery_BlocksWorld-100"])
Parser.add_argument("--index_start", help="index to start generating result from (inclusive)")
Parser.add_argument("--index_end", help="index to end generating result from (exclusive)")
Parser.add_argument("--solver", help="which solver to use", default="dual-bfws-ffparser")

def run_solver(domain, data, problem, model, solver):
    if "meta" in model or "google" in model:
        _, model_name = model.split("/")
    else:
        model_name = model

    domain_file = open(f'../output/llm-as-formalizer/{domain}/{data}/{model_name}/{problem}/{problem}_{model_name}_df.pddl').read()
    problem_file = open(f'../output/llm-as-formalizer/{domain}/{data}/{model_name}/{problem}/{problem}_{model_name}_pf.pddl').read()


    plan_found = None


    req_body = {"domain" : domain_file, "problem" : problem_file}

    # Send job request to solve endpoint
    solve_request_url=requests.post(f"https://solver.planning.domains:5001/package/{solver}/solve", json=req_body).json()

    # Query the result in the job
    celery_result=requests.post('https://solver.planning.domains:5001' + solve_request_url['result'])

    while celery_result.json().get("status","")== 'PENDING':
        # Query the result every 0.5 seconds while the job is executing
        celery_result=requests.post('https://solver.planning.domains:5001' + solve_request_url['result'])
        time.sleep(0.5)
    

    result = celery_result.json()['result']
    if solver == "lama-first":
        if not result['output']:
            if not result['stderr']:
                return False, result['stdout']
            else:
                return False, result['stderr']
        else:
            return True, result['output']
    elif solver == "dual-bfws-ffparser":
        if result['output'] == {'plan': ''}:
            if not result['stderr']:
                if "NOTFOUND" in result['stdout'] or "No plan" in result['stdout'] or "unknown" in result['stdout'] or "undeclared" in result['stdout'] or "declared twice" in result['stdout'] or "check input files" in result['stdout']:
                    plan_found = False
                else:
                    plan_found = True
                return plan_found, result['stdout']
            else:
                plan_found = False
                return plan_found, result['stderr']
        else:
            plan_found = True
            return plan_found, result['output']
        
def run_solver_batch(domain, model, data, index_start, index_end, solver):
    if '/' in model:
        _, model_name = model.split('/')
    else:
        model_name = model
    attempts = 3
    for problem in range(index_start, index_end):
        problem_name = "p0" + str(problem) if problem < 10 else "p" + str(problem)
        print(f"Running {problem_name}")
        for i in range(attempts):
            try:
                plan_found, result = run_solver(domain, data, problem_name, model, solver)               
            except:
                if i < attempts - 1:
                    continue
                else:
                    raise
            break
        if plan_found:
            plan_path = f'../output/llm-as-formalizer/{domain}/{data}/{model_name}/{problem_name}/{problem_name}_{model_name}_plan.txt'
            if not os.path.exists(os.path.dirname(plan_path)):
                os.makedirs(os.path.dirname(plan_path))
            if "Plan found with cost: 0" in result:
                plan = ''
            else:
                plan = result['plan']
            with open(plan_path, 'w') as plan_file:
                plan_file.write(plan)
        else:
            error_path = f'../output/llm-as-formalizer/{domain}/{data}/{model_name}/{problem_name}/{problem_name}_{model_name}_error.txt'
            if not os.path.exists(os.path.dirname(error_path)):
                os.makedirs(os.path.dirname(error_path))
            with open(error_path, 'w') as error_file:
                error_file.write(result)

        
if __name__=="__main__":
    args = Parser.parse_args()
    DOMAIN = args.domain
    MODEL = args.model
    DATA = args.data
    INDEX_START = eval(args.index_start)
    INDEX_END = eval(args.index_end)
    SOLVER = args.solver

    run_solver_batch(domain=DOMAIN, model=MODEL, data=DATA, index_start=INDEX_START, index_end=INDEX_END, solver=SOLVER)

