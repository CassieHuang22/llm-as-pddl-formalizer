(define (domain blocksworld)
  (:predicates
    (on ?x ?y)
    (ontable ?x)
    (clear ?x)
    (holding ?x)
    (armempty)
  )

  (:action pick-up
    :parameters (?x)
    :precondition (and (clear ?x) (ontable ?x) (armempty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (clear ?x)) (not (armempty)))
  )

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (clear ?x) (armempty) (not (holding ?x)))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (armempty) (not (holding ?x)) (not (clear ?y)))
  )

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (armempty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (clear ?x)) (not (armempty)))
  )
)
