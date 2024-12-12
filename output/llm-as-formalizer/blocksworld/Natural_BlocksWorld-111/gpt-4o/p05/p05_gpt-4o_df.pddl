(define (domain blocksworld)
  (:predicates 
    (ontable ?x) 
    (on ?x ?y) 
    (clear ?x) 
    (handempty) 
    (holding ?x)
  )

  (:action pick-up
    :parameters (?x)
    :precondition (and (ontable ?x) (clear ?x) (handempty))
    :effect (and (holding ?x)
                (not (ontable ?x))
                (not (clear ?x))
                (not (handempty))))
  )

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x)
                (clear ?x)
                (handempty)
                (not (holding ?x))))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y)
                (clear ?x)
                (handempty)
                (not (holding ?x))
                (not (clear ?y))))
  )

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (handempty))
    :effect (and (holding ?x)
                (clear ?y)
                (not (on ?x ?y))
                (not (clear ?x))
                (not (handempty))))
  )
)