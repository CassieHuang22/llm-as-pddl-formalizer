(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (on ?x - block ?y - block)
    (ontable ?x - block)
    (clear ?x - block)
    (holding ?x - block)
    (handempty)
  )
  
  (:action move-to-table
    :parameters (?x - block ?y - block)
    :precondition (and (on ?x ?y) (clear ?x) (handempty))
    :effect (and (ontable ?x) (clear ?y)
                 (not (on ?x ?y))
                 (not (handempty))
                 (holding ?x)))

  (:action move-from-table-to-block
    :parameters (?x - block ?y - block)
    :precondition (and (ontable ?x) (clear ?x) (clear ?y) (handempty))
    :effect (and (on ?x ?y) (not (ontable ?x))
                 (not (clear ?y)) (holding ?x)))

  (:action move-from-block-to-block
    :parameters (?x - block ?y - block ?z - block)
    :precondition (and (on ?x ?y) (clear ?x) (clear ?z) (handempty))
    :effect (and (on ?x ?z) (clear ?y)
                 (not (on ?x ?y)) (holding ?x) (not (clear ?z))))

  (:action release
    :parameters (?x - block)
    :precondition (holding ?x)
    :effect (and (handempty) (clear ?x)))
  
  (:action pickup
    :parameters (?x - block)
    :precondition (and (ontable ?x) (clear ?x) (handempty))
    :effect (and (holding ?x)
                 (not (ontable ?x))
                 (not (clear ?x)))))
)
