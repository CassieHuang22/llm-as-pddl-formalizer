(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
      (on-table ?b - block)
      (on ?b1 - block ?b2 - block)
      (clear ?b - block)
      (holding ?b - block)
      (arm-empty)
  )

  ;; Action to pick up a block from the table
  (:action pick-up-from-table
    :parameters (?b - block)
    :precondition (and (on-table ?b) (clear ?b) (arm-empty))
    :effect (and (holding ?b) (not (on-table ?b)) (not (arm-empty)) )
  )

  ;; Action to pick up a block from another block
  (:action pick-up-from-block
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty))
    :effect (and (holding ?b1) (clear ?b2) (not (on ?b1 ?b2)) (not (arm-empty)) )
  )

  ;; Action to put a block on the table
  (:action put-down-on-table
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (on-table ?b) (arm-empty) (clear ?b) (not (holding ?b)))
  )

  ;; Action to put a block on another block
  (:action stack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (holding ?b1) (clear ?b2))
    :effect (and (on ?b1 ?b2) (arm-empty) (clear ?b1) (not (holding ?b1)) )
  )
)
