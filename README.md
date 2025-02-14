# llm-as-pddl-formalizer
**llm-as-pddl-formalizer** is a set of data and pipeline that uses LLMs to generate PDDL.

## Requirements
To run the pipeline, the following are needed:
- OpenAI: your OpenAI API key should replace the following line (line 37 in `source/llm-as-formalizer.py` and `source/llm-as-planner.py`):
```
OPENAI_API_KEY = open(f'../../_private/key.txt').read()
```
- Kani: install Kani using the following:
```
pip install "kani[all]" torch 'accelerate>=0.26.0'
```
- VAL: follow VAL GitHub repository for instructions to install VAL, then change the following line (line 35 in `source/run_val.py`) to the VAL executable:
```
validate_executable = "../../VAL/build/macos64/Release/bin/Validate"
```

## Datasets
All datasets can be found in the `/data` folders.

In `/data` the following folders can be found:
- `/textual_blocksworld/`: textual descriptions from BlocksWorld domain
    * `BlocksWorld-100_PDDL`: Groundtruth PDDL for BlocksWorld-100 data.
    * `Heavily_Templated_BlocksWorld-100`: Templated domain and problem descriptions that sound the most similar to PDDL.
    * `Moderately_Templated_BlocksWorld-100`: Templated domain and problem descriptions that sounds natural but still explicitly list all preconditions and effects.
    * `Natural_BlocksWorld-100`: Domain and problem descriptions that sound the most natural/human-like.
-  `/textual_mystery_blocksworld`: textual descriptions from Mystery BlocksWorld domain
    *  `Heavily_Templated_Mystery_BlocksWorld-100`: Templated domain and problem descriptions that sound the most similar to PDDL. Answer files are also included (`p*_answer.txt`)
    *  `Mystery_BlocksWorld-100_PDDL`: Groundtruth PDDL for Mystery-BlocksWorld-100 data.
- `/textual_barman`: textual descriptions from Barman domain
    * `Heavily_Templated_Barman-100`: Templated domain and problem descriptions that sound the most similar to PDDL
    * `Barman-100_PDDL`: Groundtruth PDDL for Barman-100 data.
- `/textual_logistics`: textual descriptions from Logistics domain
    * `Logistics-100_PDDL`: Groundtruth PDDL for Logistics-100 data.
    * `Heavily_Templated_Logistics-100`: Templated domain and problem descriptions that sound the most similar to PDDL.
    * `Moderately_Templated_Logistics-100`: Templated domain and problem descriptions that sounds natural but still explicitly list all preconditions and effects.
    * `Natural_Logistics-100`: Domain and problem descriptions that sound the most natural/human-like.


All PDDL folders contain domain file (`domain.pddl`) and problem files (`p*.pddl`).
All folders containing textual descriptions contain domain descriptions (`p*_domain.txt`) and problem descriptions (`p*_problem.txt`)

## LLM-as-Formalizer
To generate PDDL files from textual descriptions, run the following:
```
python3 source/llm-as-formalizer.py --domain DOMAIN --model MODEL --data DATA --index_start INDEX_START --index_end INDEX_END
```
where
- `DOMAIN` is which domain to evaluate (`blocksworld`, `mystery_blocksworld`, `barman` or `logistics`)
- `MODEL` is which model to run (`["gpt-3.5-turbo", "gpt-4o-mini", "gpt-4o", "o1-preview", "google/gemma-2-9b-it", "google/gemma-2-27b-it", "meta-llama/Meta-Llama-3.1-8B-Instruct", "meta-llama/Llama-3.1-70B-Instruct", "meta-llama/Llama-3.1-405B-Instruct", "meta-llama/Llama-3.3-70B-Instruct", "deepseek-ai/DeepSeek-R1-Distill-Qwen-32B", "deepseek-ai/DeepSeek-R1-Distill-Llama-70B", "o3-mini", "deepseek-ai/DeepSeek-R1-Distill-Llama-8B"]`)
- `DATA` is which dataset to use (`["Heavily_Templated_BlocksWorld-100", "Moderately_Templated_BlocksWorld-100", "Natural_BlocksWorld-100", "Heavily_Templated_Mystery_BlocksWorld-100", "Heavily_Templated_Barman-100", "Heavily_Templated_Logistics-100", "Moderately_Templated_Logistics-100", "Natural_Logistics-100"]`)
- `INDEX_START` is which index to start running from. This number is inclusive (eg. `1` means starting from `p01`)
- `INDEX_END` is which index to end running at. This number is exclusive (eg. `112` means stop after finishing `p111`)

After generating the PDDL, we can run the solver with the following:
```
python3 source/run_solver.py --domain DOMAIN --model MODEL --data DATA --index_start INDEX_START --index_end INDEX_END --solver SOLVER   
```
where 
- `DOMAIN`, `MODEL`, `DATA`, `INDEX_START` and `INDEX_END` are the same as above
- `SOLVER` is optional and is which solver to use (`["lama-first", "dual-bfws-ffparser"]`). The default solver is `"dual-bfws-ffparser"`.

output will be written in `/outputs/llm-as-formalizer/DOMAIN/DATA/MODEL/`

## LLM-as-Planner
To run the LLM-as-Planner baseline, run the following:
```
cd source
python3 source/llm-as-planner.py --domain DOMAIN --model MODEL --data DATA --index_start INDEX_START --index_end INDEX_END
```
where `DOMAIN`, `MODEL`, `DATA`, `INDEX_START` and `INDEX_END`are the same as above.

output will be written in `/output/llm-as-planner/DOMAIN/DATA/MODEL/`

## Evaluation
To evaluate the result of LLM-as-Formalizer or LLM-as-Planner using VAL, run the following:
```
python3 source/run_val.py --domain DOMAIN --model MODEL --data DATA --index_start INDEX_START --index_end INDEX_END --prediction_type PREDICTION_TYPE --csv_result
```

where
- `DOMAIN`, `MODEL`, `DATA`, `INDEX_START` and `INDEX_END`are the same as above.
- `PREDICTION_TYPE` is which pipeline to use (`["llm-as-formalizer", "llm-as-planner"]`)
- `--csv_result` is an optional flag that outputs all results (plans and errors) in a csv file. The csv file will be saved to `/output/PREDICTION_TYPE/DOMAIN/DATA/MODEL/`

