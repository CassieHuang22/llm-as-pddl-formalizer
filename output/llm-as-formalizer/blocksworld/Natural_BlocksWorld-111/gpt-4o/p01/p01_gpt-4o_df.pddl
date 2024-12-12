(define (domain blocksworld)
    (:requirements :strips :typing)
    (:types block)
    (:predicates
        (on-table ?b - block)
        (on ?x - block ?y - block)
        (clear ?b - block)
        (holding ?b - block)
        (arm-empty)
    )
    
    (:action pick-up
        :parameters (?b - block)
        :precondition (and
            (clear ?b)
            (on-table ?b)
            (arm-empty)
        )
        :effect (and
            (not (on-table ?b))
            (not (arm-empty))
            (holding ?b)
        )
    )
    
    (:action put-down
        :parameters (?b - block)
        :precondition (and
            (holding ?b)
        )
        :effect (and
            (not (holding ?b))
            (on-table ?b)
            (clear ?b)
            (arm-empty)
        )
    )
    
    (:action stack
        :parameters (?x - block ?y - block)
        :precondition (and
            (holding ?x)
            (clear ?y)
        )
        :effect (and
            (not (holding ?x))
            (not (clear ?y))
            (arm-empty)
            (on ?x ?y)
            (clear ?x)
        )
    )
    
    (:action unstack
        :parameters (?x - block ?y - block)
        :precondition (and
            (on ?x ?y)
            (clear ?x)
            (arm-empty)
        )
        :effect (and
            (holding ?x)
            (clear ?y)
            (not (on ?x ?y))
            (not (arm-empty))
        )
    )
)