(define (domain blocks-world)
  (:requirements :strips)
  (:predicates 
    (on ?x ?y)
    (on-table ?x)
    (clear ?x)
    (holding ?x)
    (arm-empty)
  )
  
  (:action pickup
    :parameters (?b)
    :precondition (and (clear ?b) (on-table ?b) (arm-empty))
    :effect (and (holding ?b)
                 (not (clear ?b))
                 (not (on-table ?b))
                 (not (arm-empty))))
  
  (:action putdown
    :parameters (?b)
    :precondition (holding ?b)
    :effect (and (on-table ?b)
                 (clear ?b)
                 (arm-empty)
                 (not (holding ?b))))
  
  (:action stack
    :parameters (?b1 ?b2)
    :precondition (and (clear ?b2) (holding ?b1))
    :effect (and (on ?b1 ?b2)
                 (clear ?b1)
                 (arm-empty)
                 (not (clear ?b2))
                 (not (holding ?b1))))
  
  (:action unstack
    :parameters (?b1 ?b2)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty))
    :effect (and (holding ?b1)
                 (clear ?b2)
                 (not (on ?b1 ?b2))
                 (not (clear ?b1))
                 (not (arm-empty))))
)