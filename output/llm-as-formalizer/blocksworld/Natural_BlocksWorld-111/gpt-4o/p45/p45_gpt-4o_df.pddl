(define (domain blocksworld)
  (:predicates
    (ontable ?block)
    (on ?block1 ?block2)
    (clear ?block)
    (holding ?block)
    (arm-empty))

  (:action pickup
    :parameters (?block)
    :precondition (and (clear ?block) (ontable ?block) (arm-empty))
    :effect (and (holding ?block)
                 (not (ontable ?block))
                 (not (arm-empty))
                 (not (clear ?block))))

  (:action putdown
    :parameters (?block)
    :precondition (holding ?block)
    :effect (and (ontable ?block)
                 (clear ?block)
                 (arm-empty)
                 (not (holding ?block))))

  (:action unstack
    :parameters (?block1 ?block2)
    :precondition (and (on ?block1 ?block2) (clear ?block1) (arm-empty))
    :effect (and (holding ?block1)
                 (clear ?block2)
                 (not (clear ?block1))
                 (not (on ?block1 ?block2))
                 (not (arm-empty))))

  (:action stack
    :parameters (?block1 ?block2)
    :precondition (and (holding ?block1) (clear ?block2))
    :effect (and (on ?block1 ?block2)
                 (arm-empty)
                 (clear ?block1)
                 (not (holding ?block1))
                 (not (clear ?block2)))))