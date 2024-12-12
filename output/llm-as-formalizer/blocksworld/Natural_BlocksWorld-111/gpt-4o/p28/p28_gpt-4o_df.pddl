(define (domain blocksworld)
  (:predicates 
    (ontable ?b)
    (on ?b ?b2)
    (clear ?b)
    (holding ?b)
    (armempty)
  )
  
  (:action pick-up
    :parameters (?b)
    :precondition (and (clear ?b) (ontable ?b) (armempty))
    :effect (and (holding ?b) (not (ontable ?b)) (not (clear ?b)) (not (armempty)))
  )

  (:action put-down
    :parameters (?b)
    :precondition (holding ?b)
    :effect (and (ontable ?b) (clear ?b) (not (holding ?b)) (armempty))
  )

  (:action stack
    :parameters (?b ?b2)
    :precondition (and (holding ?b) (clear ?b2))
    :effect (and (on ?b ?b2) (clear ?b) (not (clear ?b2)) (not (holding ?b)) (armempty))
  )

  (:action unstack
    :parameters (?b ?b2)
    :precondition (and (on ?b ?b2) (clear ?b) (armempty))
    :effect (and (holding ?b) (clear ?b2) (not (on ?b ?b2)) (not (clear ?b)) (not (armempty)))
  )
)
