(define (domain blocksworld)
  (:requirements :strips)
  (:predicates
    (on ?x ?y)                 ; block ?x is on block or table ?y
    (ontable ?x)               ; block ?x is on the table
    (clear ?x)                 ; block ?x has nothing on it
    (holding ?x)               ; the robot arm is holding block ?x
    (armempty)                 ; the robot arm is not holding anything
  )
  (:action pickup
    :parameters (?x)
    :precondition (and (ontable ?x) (clear ?x) (armempty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (armempty)) (clear ?x))
  )
  (:action putdown
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (not (holding ?x)) (armempty))
  )
  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (not (holding ?x)) (armempty) (not (clear ?y)) (clear ?x))
  )
  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (armempty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (armempty)))
  )
)