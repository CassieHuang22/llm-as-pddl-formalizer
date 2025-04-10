(define (domain BlocksWorld)
  (:requirements :strips)
  (:predicates 
    (clear ?x - block)
    (on-table ?x - block)
    (arm-empty)
    (holding ?x - block)
    (on ?x ?y - block))

  (:action pickup
    :parameters (?b - block)
    :precondition (and (clear ?b) (on-table ?b) (arm-empty)
    :effect (and (holding ?b)
                 (not (clear ?b))
                 (not (on-table ?b))
                 (not (arm-empty))))

  (:action putdown
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (clear ?b)
                 (on-table ?b)
                 (arm-empty)
                 (not (holding ?b))))

  (:action stack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (clear ?b2) (holding ?b1))
    :effect (and (arm-empty)
                 (clear ?b1)
                 (on ?b1 ?b2)
                 (not (clear ?b2))
                 (not (holding ?b1))))

  (:action unstack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty)
    )
    :effect (and (holding ?b1)
                 (clear ?b2)
                 (not (on ?b1 ?b2))
                 (not (clear ?b1))
                 (not (arm-empty))))
)