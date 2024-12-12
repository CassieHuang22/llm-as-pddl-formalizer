
(define (domain blocksworld)
  (:requirements :strips :typing)

  (:predicates
    (on ?x ?y)  ; Block ?x is on block or table ?y
    (ontable ?x)  ; Block ?x is on the table
    (clear ?x)   ; There is no block on Block ?x
    (holding ?x) ; The robot arm is holding Block ?x
    (armempty)   ; The robot arm is empty
  )

  (:action pick-up
    :parameters (?x)
    :precondition (and (clear ?x) (ontable ?x) (armempty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (clear ?x)) (not (armempty))))

  (:action put-down
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
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (clear ?x)) (not (armempty))))
)
