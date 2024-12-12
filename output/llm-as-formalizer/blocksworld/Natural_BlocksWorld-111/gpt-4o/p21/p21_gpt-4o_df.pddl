(define (domain blocksworld)
  (:predicates
    (ontable ?b)
    (on ?b ?b2)
    (clear ?b)
    (holding ?b)
    (empty)
  )

  (:action pick-up
    :parameters (?b)
    :precondition (and (clear ?b) (ontable ?b) (empty))
    :effect (and (holding ?b) (not (ontable ?b)) (not (empty)) (not (clear ?b)))
  )

  (:action put-down
    :parameters (?b)
    :precondition (holding ?b)
    :effect (and (ontable ?b) (clear ?b) (not (holding ?b)) (empty))
  )

  (:action stack
    :parameters (?b ?b2)
    :precondition (and (holding ?b) (clear ?b2))
    :effect (and (on ?b ?b2) (clear ?b) (not (holding ?b)) (empty) (not (clear ?b2)))
  )

  (:action unstack
    :parameters (?b ?b2)
    :precondition (and (on ?b ?b2) (clear ?b) (empty))
    :effect (and (holding ?b) (clear ?b2) (not (on ?b ?b2)) (not (clear ?b)) (not (empty)))
  )
)