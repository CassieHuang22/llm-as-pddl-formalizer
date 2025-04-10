(define (domain blocksworld)
  (:requirements :strips)
  (:types block)
  (:predicates 
    (on ?x - block ?y - block)
    (ontable ?x - block)
    (clear ?x - block)
    (holding ?x - block)
    (arm-empty)
  )

  (:action pickup
    :parameters (?b - block)
    :precondition (and (clear ?b) (ontable ?b) (arm-empty))
    :effect (and (holding ?b) (not (clear ?b)) (not (ontable ?b)) (not (arm-empty)))
  )

  (:action putdown
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (arm-empty) (ontable ?b) (clear ?b) (not (holding ?b)))
  )

  (:action stack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (clear ?b2) (holding ?b1))
    :effect (and (arm-empty) (on ?b1 ?b2) (clear ?b1) (not (clear ?b2)) (not (holding ?b1)))
  )

  (:action unstack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty))
    :effect (and (holding ?b1) (clear ?b2) (not (on ?b1 ?b2)) (not (clear ?b1)) (not (arm-empty)))
  )
)