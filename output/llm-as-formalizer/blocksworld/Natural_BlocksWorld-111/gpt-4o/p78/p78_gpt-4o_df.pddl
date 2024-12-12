(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)

  (:predicates
    (on-table ?b - block)
    (on ?b - block ?b2 - block)
    (clear ?b - block)
    (holding ?b - block)
    (empty))

  (:action pick-up
    :parameters (?b - block)
    :precondition (and (clear ?b) (on-table ?b) (empty))
    :effect (and (holding ?b) (not (empty)) (not (on-table ?b))))

  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (empty) (on-table ?b) (not (holding ?b))))

  (:action unstack
    :parameters (?b - block ?b2 - block)
    :precondition (and (on ?b ?b2) (clear ?b) (empty))
    :effect (and (holding ?b) (clear ?b2) (not (on ?b ?b2)) (not (empty))))

  (:action stack
    :parameters (?b - block ?b2 - block)
    :precondition (and (holding ?b) (clear ?b2))
    :effect (and (not (holding ?b)) (empty) (on ?b ?b2) (not (clear ?b2)))))