(define (domain blocksworld)
  (:predicates 
    (on ?x ?y) ; Block x is on block y
    (ontable ?x) ; Block x is on the table
    (clear ?x) ; Block x has nothing on it
    (holding ?x) ; The arm is holding block x
    (armempty) ; The arm is not holding anything
  )
  
  (:action pick-up
    :parameters (?x)
    :precondition (and (clear ?x) (ontable ?x) (armempty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (armempty)) (clear ?x))
  )

  (:action pick-from-block
    :parameters (?x ?y)
    :precondition (and (clear ?x) (on ?x ?y) (clear ?y) (armempty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (armempty)))
  )

  (:action put-down
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (armempty) (not (holding ?x)) (clear ?x))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (armempty) (not (holding ?x)))
  )
)