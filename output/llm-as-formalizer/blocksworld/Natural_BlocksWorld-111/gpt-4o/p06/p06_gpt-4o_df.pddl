(define (domain blocksworld)
  (:predicates
    (on ?x ?y) ; Block ?x is on block ?y
    (ontable ?x) ; Block ?x is on the table
    (clear ?x) ; Block ?x has nothing on top of it
    (holding ?x) ; The robot arm is holding block ?x
    (armempty) ; The robot arm is empty
  )

  (:action pick-up
    :parameters (?x)
    :precondition (and (ontable ?x) (clear ?x) (armempty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (armempty)) (clear ?x))
  )

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (clear ?x) (armempty) (not (holding ?x)))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (armempty) (not (holding ?x)) (not (clear ?y)))
  )

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (armempty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (armempty)))
  )
)

