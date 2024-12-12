(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates 
    (ontable ?b - block)
    (on ?x ?y - block)
    (clear ?b - block)
    (holding ?b - block)
    (armempty)
  )

  (:action pick-up
    :parameters (?b - block)
    :precondition (and (clear ?b) (ontable ?b) (armempty))
    :effect (and (holding ?b) (not (ontable ?b)) (not (clear ?b)) (not (armempty))))

  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (ontable ?b) (clear ?b) (armempty) (not (holding ?b))))

  (:action stack
    :parameters (?x ?y - block)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (armempty) (not (holding ?x)) (not (clear ?y))))

  (:action unstack
    :parameters (?x ?y - block)
    :precondition (and (on ?x ?y) (clear ?x) (armempty))
    :effect (and (holding ?x) (clear ?y) (armempty) (not (clear ?x)) (not (on ?x ?y))))
)
