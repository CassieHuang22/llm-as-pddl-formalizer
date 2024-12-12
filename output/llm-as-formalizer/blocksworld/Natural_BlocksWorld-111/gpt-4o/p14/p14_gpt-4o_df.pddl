(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  
  (:predicates
    (on-table ?b - block)
    (on ?x - block ?y - block)
    (clear ?b - block)
    (holding ?b - block)
    (emptyhand)
  )
  
  (:action pick-up
    :parameters (?b - block)
    :precondition (and (clear ?b) (on-table ?b) (emptyhand))
    :effect (and (not (on-table ?b)) (not (emptyhand)) (holding ?b))
  )
  
  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (emptyhand) (on-table ?b) (clear ?b) (not (holding ?b)))
  )
  
  (:action stack
    :parameters (?x - block ?y - block)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (not (holding ?x)) (not (clear ?y)) (clear ?x) (on ?x ?y) (emptyhand))
  )
  
  (:action unstack
    :parameters (?x - block ?y - block)
    :precondition (and (on ?x ?y) (clear ?x) (emptyhand))
    :effect (and (holding ?x) (clear ?y) (not (clear ?x)) (not (on ?x ?y)) (not (emptyhand)))
  )
)
