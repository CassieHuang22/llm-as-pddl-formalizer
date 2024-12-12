(define (problem blocksworld-problem)
    (:domain blocksworld)
    (:objects
        block1 block2 block3 block4 block5 block6 - block
    )
    (:init
        (on-table block4)
        (on block5 block4)
        (on block6 block5)
        (on block1 block6)
        (on block2 block1)
        (on block3 block2)
        (clear block3)
        (arm-empty)
    )
    (:goal (and
        (on-table block5)
        (on-table block1)
        (on-table block2)
        (on-table block4)
        (on-table block3)
        (on block6 block4)
    ))
)