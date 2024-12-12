(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (on-table ?b - block)
    (on ?b - block ?b2 - block)
    (clear ?b - block)
    (holding ?b - block)
    (handempty)
  )
  (:action pick-up
    :parameters (?b - block)
    :precondition (and (clear ?b) (on-table ?b) (handempty))
    :effect (and (holding ?b) (not (clear ?b)) (not (on-table ?b)) (not (handempty)))
  )
  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (clear ?b) (on-table ?b) (handempty) (not (holding ?b)))
  )
  (:action stack
    :parameters (?b - block ?b2 - block)
    :precondition (and (holding ?b) (clear ?b2))
    :effect (and (on ?b ?b2) (clear ?b) (handempty) (not (holding ?b)) (not (clear ?b2)))
  )
  (:action unstack
    :parameters (?b - block ?b2 - block)
    :precondition (and (on ?b ?b2) (clear ?b) (handempty))
    :effect (and (holding ?b) (clear ?b2) (not (on ?b ?b2)) (not (clear ?b)) (not (handempty)))
  )
)
