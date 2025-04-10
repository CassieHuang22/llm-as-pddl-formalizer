(define (domain blocks)
  (:requirements :strips)
  (:predicates 
    (clear ?x)
    (on-table ?x)
    (arm-empty)
    (holding ?x)
    (on ?x ?y))

  (:action Pickup
    :parameters (?b)
    :precondition (and (clear ?b) (on-table ?b) (arm-empty))
    :effect (and (holding ?b) (not (clear ?b)) (not (on-table ?b)) (not (arm-empty))))

  (:action Putdown
    :parameters (?b)
    :precondition (holding ?b)
    :effect (and (clear ?b) (on-table ?b) (arm-empty) (not (holding ?b))))

  (:action Stack
    :parameters (?b1 ?b2)
    :precondition (and (clear ?b2) (holding ?b1))
    :effect (and (arm-empty) (clear ?b1) (on ?b1 ?b2) (not (clear ?b2)) (not (holding ?b1))))

  (:action Unstack
    :parameters (?b1 ?b2)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty))
    :effect (and (holding ?b1) (clear ?b2) (not (on ?b1 ?b2)) (not (clear ?b1)) (not (arm-empty))))
)