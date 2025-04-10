(define (domain blocks)
  (:requirements :strips)
  (:predicates
    (on ?x ?y - block)
    (ontable ?x - block)
    (clear ?x - block)
    (holding ?x - block)
    (arm-empty)
  )
  
  (:action Pickup
    :parameters (?b - block)
    :precondition (and (clear ?b) (ontable ?b) (arm-empty))
    :effect (and (holding ?b) (not (clear ?b)) (not (ontable ?b)) (not (arm-empty)))
  )
  
  (:action Putdown
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (ontable ?b) (clear ?b) (arm-empty) (not (holding ?b)))
  )
  
  (:action Stack
    :parameters (?b1 ?b2 - block)
    :precondition (and (clear ?b2) (holding ?b1))
    :effect (and (arm-empty) (clear ?b1) (on ?b1 ?b2) (not (clear ?b2)) (not (holding ?b1)))
  )
  
  (:action Unstack
    :parameters (?b1 ?b2 - block)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty))
    :effect (and (holding ?b1) (clear ?b2) (not (on ?b1 ?b2)) (not (clear ?b1)) (not (arm-empty)))
  )
)