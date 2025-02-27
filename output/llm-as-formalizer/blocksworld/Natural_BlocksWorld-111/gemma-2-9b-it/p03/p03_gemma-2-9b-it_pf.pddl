
(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 .. block13 table)
  (:init
    (on block12 table)
    (on block6 block12)
    (on block1 block6)
    (on block3 block1)
    (on block5 table)
    (on block8 table)
    (on block10 block8)
    (on block7 table)
    (on block13 block7)
    (on block4 block13)
    (on block11 block4)
    (on block2 block11)
    (on block9 block2)
  )
  (:goal
    (and (on block3 table)
         (on block8 table)
         (on block7 block8)
         (on block5 table)
         (on block10 block5)
         (on block1 table)
         (on block13 block1)
         (on block12 block13)
         (on block9 block12)
         (on block2 block9)
         (on block4 block2)
         (on block11 table)
         (on block6 block11))
  )
)
