(define (domain blocksworld)
  (:predicates (on ?x ?y) ; Block ?x is on ?y
               (ontable ?x) ; Block ?x is on the table
               (clear ?x) ; Block ?x is clear
               (holding ?x) ; The arm is holding block ?x
               (arm-empty) ; The arm is free
  )

  (:action pick-up
    :parameters (?x)
    :precondition (and (ontable ?x) (clear ?x) (arm-empty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (clear ?x)) (not (arm-empty)))
  )

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (clear ?x) (arm-empty) (not (holding ?x)))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (arm-empty) (not (holding ?x)) (not (clear ?y)))
  )

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (arm-empty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (clear ?x)) (not (arm-empty)))
  )
)