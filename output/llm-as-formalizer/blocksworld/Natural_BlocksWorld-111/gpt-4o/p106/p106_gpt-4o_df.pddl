(define (domain blocksworld)
  (:predicates
    (on ?x ?y) ; ?x is on ?y
    (ontable ?x) ; ?x is on the table
    (clear ?x) ; nothing on ?x
    (holding ?x) ; robot arm is holding ?x
    (handempty) ; robot arm is empty
  )

  (:action pickup
    :parameters (?x)
    :precondition (and (ontable ?x) (clear ?x) (handempty))
    :effect (and (holding ?x)
                 (not (ontable ?x))
                 (not (clear ?x))
                 (not (handempty))))

  (:action putdown
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x)
                 (clear ?x)
                 (handempty)
                 (not (holding ?x))))

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y)
                 (clear ?x)
                 (handempty)
                 (not (holding ?x))
                 (not (clear ?y))))

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (handempty))
    :effect (and (holding ?x)
                 (clear ?y)
                 (not (on ?x ?y))
                 (not (clear ?x))
                 (not (handempty))))
)