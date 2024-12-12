(define (domain blocksworld)
  (:predicates
    (on ?x ?y)                  ; block ?x is on block ?y
    (ontable ?x)                ; block ?x is on the table
    (clear ?x)                  ; block ?x has nothing on it
    (holding ?x)                ; arm is holding block ?x
    (arm-empty)                 ; arm is empty
  )
  
  (:action pick-up
    :parameters (?x)
    :precondition (and (clear ?x) (ontable ?x) (arm-empty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (clear ?x)) (not (arm-empty))))

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (clear ?x) (arm-empty) (not (holding ?x))))

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (arm-empty) (not (holding ?x)) (not (clear ?y))))

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (arm-empty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (clear ?x)) (not (arm-empty)))))
