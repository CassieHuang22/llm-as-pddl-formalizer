(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates 
    (on-table ?b - block)
    (on ?b1 - block ?b2 - block)
    (clear ?b - block)
    (holding ?b - block)
    (arm-empty))
  
  (:action pick-up-from-table
    :parameters (?b - block)
    :precondition (and (on-table ?b) (clear ?b) (arm-empty))
    :effect (and (holding ?b) (not (clear ?b)) (not (on-table ?b)) (not (arm-empty))))
  
  (:action pick-up-from-block
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty))
    :effect (and (holding ?b1) (clear ?b2) (not (on ?b1 ?b2)) (not (clear ?b1)) (not (arm-empty))))
  
  (:action put-down-on-table
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (on-table ?b) (clear ?b) (arm-empty) (not (holding ?b))))
  
  (:action stack-on-block
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (holding ?b1) (clear ?b2))
    :effect (and (on ?b1 ?b2) (clear ?b1) (arm-empty) (not (clear ?b2)) (not (holding ?b1)))))