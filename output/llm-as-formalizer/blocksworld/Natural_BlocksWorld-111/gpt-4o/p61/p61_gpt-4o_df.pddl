(define (domain blocksworld)
  (:predicates
    (on ?x ?y)
    (ontable ?x)
    (clear ?x)
    (handempty)
    (holding ?x)
  )
  (:action pick-up
    :parameters (?x)
    :precondition (and (clear ?x) (ontable ?x) (handempty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (handempty)) (not (clear ?x)))
  )
  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (handempty) (clear ?x) (not (holding ?x)))
  )
  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (handempty) (clear ?x) (not (holding ?x)) (not (clear ?y)))
  )
  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (handempty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (handempty)) (not (clear ?x)))
  )
)