
(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 .. block10 table)
  (:init
    (on block8 table)
    (on block4 block8)
    (on block1 block4)
    (on block2 block1)
    (on block9 table)
    (on block3 table)
    (on block6 block3)
    (on block7 table)
    (on block5 table)
    (on block10 block5)
  )
  (:goal
    (and (clear block1)
         (clear block2)
         (clear block3)
         (clear block4)
         (clear block5)
         (clear block6)
         (clear block7)
         (clear block8)
         (clear block9)
         (clear block10))
  )
)
