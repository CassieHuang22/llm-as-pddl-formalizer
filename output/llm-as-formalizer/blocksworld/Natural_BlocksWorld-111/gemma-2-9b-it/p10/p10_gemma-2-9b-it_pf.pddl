
(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 .. block8 table)
  (:init
    (on block6 table)
    (on block1 block6)
    (on block3 table)
    (on block2 block3)
    (on block8 block2)
    (on block5 block8)
    (on block7 block5)
    (on block4 block7)
  )
  (:goal
    (and (on block3 table)
         (on block8 block3)
         (on block4 block8)
         (on block1 block4)
         (on block2 block1)
         (on block7 block2)
         (on block6 block7)
         (on block5 block6))
  )
)
