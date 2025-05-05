# Examples for Logistics-100 and Barman-100

Due to the length of the examples, we display examples of the Domain File and Problem File in PDDL and Domain Descriptions and Problem Descriptions for both the Logistics and Barman domains.

## Logistics-100
`./Logistics-100` contains all examples for the Logistics-100 dataset, including all levels of naturalness.

* `./Logistics-100/df.pddl` and `./Logistics-100/pf.pddl` contain example groundtruth domain file and problem file for Logistics-100. The domain file contains all six actions (load-truck, load-airplane, unload-truck, unload-airplane, drive-truck, drive-airplane) and their pre-conditions and post-conditions, as well as predicates needed for the domain. The problem file contains the objects, initial state and goal state for the problem.
* `./Logistics-100/heavily_templated_dd.txt` and `./Logistics-100/heavily_teplated_pd.txt` display an example domain description and problem description for the Heavily Templated Logistics-100 dataset. We can see that the descriptions have all the same components as the domain file and problem file in PDDL, but written in different levels of naturalness. All preconditions and post-conditions are written out explicitly and sound similar to PDDL. The problem description is similar, in that it lists all the predicates needed for to solve the task.

* `./Logistics-100/moderately_templated_dd.txt` and `moderately_templated_pd.txt` display the domain descripiton and problem description for the Moderately Templated Logistics-100 dataset. We can see the domain description is much more natural than the Heavily Templated data, but all predicates are still listed. The problem description for the Moderately Templated data is the same as the problem description for Heavily Templated data.

* `./Logistics-100/natural_dd.txt` and `./Logistics-100/natural_pd.txt` display an example domain description and problem description for the Natural Logistics-100 dataset. We can see that the domain description and problem description give all necessary information to complete the task, but does not sound like PDDL, and does not describe all predicates needed to perform the task.

## Barman-100

`./Barman-100` contains all examples for the Barman-100 dataset.

* `./Barman-100/df.pddl` and `./Barman-100/pf.pddl` display an example of the groundtruth domain file and problem file for Barman-100. The domain file contains all twelve actions  and their pre-conditions and post-conditions, as well as predicates needed for the domain. The problem file contains the objects, initial state and goal state for the problem.

* `./Barman-100/heavily_templated_dd.txt` and `Barman-100/heavily_templated_pd.txt` display an example domain description and problem description for the Heavily Templated data for Barman-100. We can see that the descriptions have all the same components as the domain file and problem file in PDDL. For the Heavily Templated domain description, all preconditions and post-conditions are written out explicitly and sound similar to PDDL. The problem description is similar, in that it lists all the predicates needed for to solve the task.