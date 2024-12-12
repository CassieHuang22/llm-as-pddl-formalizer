(define (domain blocksworld)
  (:predicates 
    (on ?x ?y)  ; block ?x is on block ?y
    (ontable ?x)  ; block ?x is on the table
    (clear ?x)  ; block ?x has nothing on top
    (holding ?x)  ; the robot arm is holding block ?x
    (arm-empty)  ; the robot arm is empty
  )

  (:action pickup
    :parameters (?x)
    :precondition (and (clear ?x) (ontable ?x) (arm-empty))
    :effect (and (holding ?x) (not (arm-empty)) (not (ontable ?x)) (not (clear ?x)))
  )

  (:action putdown
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (arm-empty) (clear ?x) (not (holding ?x)))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (arm-empty) (not (holding ?x)) (not (clear ?y)))
  )

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (arm-empty))
    :effect (and (holding ?x) (clear ?y) (not (arm-empty)) (not (on ?x ?y)) (not (clear ?x)))
  )
)