(define (domain blocksworld)
  (:predicates 
    (on ?x ?y)  ; block x is on block y
    (ontable ?x)  ; block x is on the table
    (clear ?x)  ; block x has nothing on it
    (holding ?x)  ; the arm is holding block x
    (armempty)   ; the arm is empty
  )

  (:action pickup
    :parameters (?x)
    :precondition (and (clear ?x) (ontable ?x) (armempty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (clear ?x)) (not (armempty))))

  (:action putdown
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (clear ?x) (armempty) (not (holding ?x))))

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (armempty) (not (holding ?x)) (not (clear ?y))))

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (armempty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (clear ?x))))
)