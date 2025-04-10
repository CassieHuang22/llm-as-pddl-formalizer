(define (domain blocksworld)
  (:requirements :strips)
  (:predicates 
    (clear ?x)
    (on-table ?x)
    (on ?x ?y)
    (holding ?x)
    (arm-empty)
  )
  
  (:action pickup
    :parameters (?b)
    :precondition (and (clear ?b) (on-table ?b) (arm-empty))
    :effect (and (not (clear ?b)) (not (on-table ?b)) (not (arm-empty)) (holding ?b))
  )
  
  (:action putdown
    :parameters (?b)
    :precondition (holding ?b)
    :effect (and (clear ?b) (on-table ?b) (arm-empty) (not (holding ?b)))
  
  (:action stack
    :parameters (?b1 ?b2)
    :precondition (and (clear ?b2) (holding ?b1))
    :effect (and (arm-empty) (clear ?b1) (on ?b1 ?b2) (not (clear ?b2)) (not (holding ?b1))
  )
  
  (:action unstack
    :parameters (?b1 ?b2)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty))
    :effect (and (holding ?b1) (clear ?b2) (not (on ?b1 ?b2)) (not (clear ?b1)) (not (arm-empty)))
  )
)