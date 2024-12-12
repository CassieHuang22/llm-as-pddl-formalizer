(define (domain blocksworld)
  (:predicates
    (on-table ?x)
    (on ?x ?y)
    (clear ?x)
    (holding ?x)
    (arm-empty)
  )

  (:action pick-up
    :parameters (?x)
    :precondition (and (clear ?x) (on-table ?x) (arm-empty))
    :effect (and (holding ?x) (not (on-table ?x)) (not (arm-empty)) (not (clear ?x)))
  )

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (on-table ?x) (clear ?x) (arm-empty) (not (holding ?x)))
  )

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (arm-empty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (arm-empty)) (not (clear ?x)))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (arm-empty) (not (holding ?x)) (not (clear ?y)))
  )
)