(define (domain blocksworld)
  (:predicates
    (on ?x ?y)
    (ontable ?x)
    (clear ?x)
    (handempty)
    (holding ?x))

  (:action pick-up
    :parameters (?x)
    :precondition (and (ontable ?x) (clear ?x) (handempty))
    :effect (and (not (ontable ?x)) (not (clear ?x)) (not (handempty))
                 (holding ?x)))

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (clear ?x) (handempty)
                 (not (holding ?x))))

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (not (holding ?x)) (clear ?x) (handempty)
                 (on ?x ?y) (not (clear ?y))))

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (handempty))
    :effect (and (holding ?x) (clear ?y) (not (handempty))
                 (not (clear ?x)) (not (on ?x ?y)))))