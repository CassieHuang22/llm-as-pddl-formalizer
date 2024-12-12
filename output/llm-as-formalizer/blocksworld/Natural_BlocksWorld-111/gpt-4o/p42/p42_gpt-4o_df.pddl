(define (domain blocksworld)
  (:requirements :strips :typing)
  (:predicates 
    (on ?x ?y)  ; Block ?x is on block or table ?y
    (ontable ?x) ; Block ?x is on the table
    (clear ?x)  ; Block ?x has nothing on top of it
    (handempty) ; The hand is empty
    (holding ?x) ; The hand is holding block ?x
  )
  
  (:action pickup
    :parameters (?x)
    :precondition (and (clear ?x) (ontable ?x) (handempty))
    :effect (and (holding ?x) (not (ontable ?x)) (not (clear ?x)) (not (handempty)))
  )

  (:action putdown
    :parameters (?x)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (clear ?x) (handempty) (not (holding ?x)))
  )

  (:action unstack
    :parameters (?x ?y)
    :precondition (and (on ?x ?y) (clear ?x) (handempty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (clear ?x)) (not (handempty)))
  )

  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (handempty) (not (holding ?x)) (not (clear ?y)))
  )
)