
(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 .. block10 table)
  (:init
    (on block3 table)
    (on block4 table)
    (on block10 table)
    (on block7 table)
    (on block2 table)
    (on block6 table)
    (on block1 table)
    (on block5 table)
    (on block9 table)
    (on block8 block10)
  )
  (:goal
    (and (on block1 table)
         (on block5 table)
         (on block7 block5)
         (on block8 block7)
         (on block4 block8)
         (on block2 block4)
         (on block6 table)
         (on block3 block6)
         (on block9 block3)
         (on block10 table))
  )
)