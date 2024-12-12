(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (ontable ?b - block)
    (on ?b1 - block ?b2 - block)
    (clear ?b - block)
    (holding ?b - block)
    (armempty)
  )
  (:action pick-up
    :parameters (?b - block)
    :precondition (and (clear ?b) (ontable ?b) (armempty))
    :effect (and (holding ?b)
                 (not (ontable ?b))
                 (not (armempty))
                 (not (clear ?b))))
  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (ontable ?b)
                 (clear ?b)
                 (armempty)
                 (not (holding ?b))))
  (:action stack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (holding ?b1) (clear ?b2))
    :effect (and (on ?b1 ?b2)
                 (clear ?b1)
                 (armempty)
                 (not (holding ?b1))
                 (not (clear ?b2))))
  (:action unstack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (armempty))
    :effect (and (holding ?b1)
                 (clear ?b2)
                 (not (on ?b1 ?b2))
                 (not (clear ?b1))
                 (not (armempty))))
)