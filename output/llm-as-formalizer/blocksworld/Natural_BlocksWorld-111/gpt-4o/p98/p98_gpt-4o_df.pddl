(define (domain blocksworld)
  (:requirements :strips)
  (:predicates (ontable ?x)
               (on ?x ?y)
               (clear ?x)
               (holding ?x)
               (arm-free))

  (:action pick-up
    :parameters (?x)
    :precondition (and (clear ?x) (ontable ?x) (arm-free))
    :effect (and (holding ?x)
                 (not (ontable ?x))
                 (not (clear ?x))
                 (not (arm-free))))

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x)
                 (clear ?x)
                 (arm-free)
                 (not (holding ?x))))

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y)
                 (clear ?x)
                 (arm-free)
                 (not (holding ?x))
                 (not (clear ?y))))

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (arm-free))
    :effect (and (holding ?x)
                 (clear ?y)
                 (not (on ?x ?y))
                 (not (clear ?x))
                 (not (arm-free)))))