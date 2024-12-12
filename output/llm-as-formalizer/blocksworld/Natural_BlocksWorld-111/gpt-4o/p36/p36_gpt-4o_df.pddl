(define (domain blocksworld)
    (:predicates
        (on ?x ?y)             ; Block ?x is directly on Block ?y
        (ontable ?x)           ; Block ?x is on the table
        (clear ?x)             ; Block ?x has nothing on it
        (holding ?x)           ; Arm is holding Block ?x
        (handempty)            ; Arm is empty
    )

    (:action pickup
        :parameters (?x)
        :precondition (and (ontable ?x) (clear ?x) (handempty))
        :effect (and (holding ?x) (not (ontable ?x)) (not (handempty)) (not (clear ?x)))
    )

    (:action putdown
        :parameters (?x)
        :precondition (holding ?x)
        :effect (and (ontable ?x) (clear ?x) (handempty) (not (holding ?x)))
    )

    (:action stack
        :parameters (?x ?y)
        :precondition (and (holding ?x) (clear ?y))
        :effect (and (on ?x ?y) (clear ?x) (handempty) (not (holding ?x)) (not (clear ?y)))
    )

    (:action unstack
        :parameters (?x ?y)
        :precondition (and (on ?x ?y) (clear ?x) (handempty))
        :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (handempty)) (not (clear ?x)))
    )
)