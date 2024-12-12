(define (domain blocksworld)
  (:predicates
    (on-table ?b)
    (on ?b ?x)
    (clear ?b)
    (holding ?b)
    (arm-empty)
  )
  
  (:action pick-up
    :parameters (?b)
    :precondition (and (clear ?b) (on-table ?b) (arm-empty))
    :effect (and (holding ?b) (not (on-table ?b)) (not (arm-empty)))
  )

  (:action put-down
    :parameters (?b)
    :precondition (holding ?b)
    :effect (and (on-table ?b) (arm-empty) (not (holding ?b)))
  )

  (:action stack
    :parameters (?b ?x)
    :precondition (and (holding ?b) (clear ?x))
    :effect (and (on ?b ?x) (arm-empty) (clear ?b) (not (clear ?x)) (not (holding ?b)))
  )

  (:action unstack
    :parameters (?b ?x)
    :precondition (and (on ?b ?x) (clear ?b) (arm-empty))
    :effect (and (holding ?b) (clear ?x) (not (on ?b ?x)) (not (arm-empty)))
  )
)
