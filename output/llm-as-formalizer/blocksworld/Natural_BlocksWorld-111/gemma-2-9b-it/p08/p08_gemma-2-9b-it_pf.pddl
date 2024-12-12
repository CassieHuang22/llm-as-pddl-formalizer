
(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 .. block15 table)
  (:init
    (on block9 table)
    (on block14 table)
    (on block2 block14)
    (on block5 table)
    (on block12 table)
    (on block11 table)
    (on block15 table)
    (on block8 table)
    (on block3 block8)
    (on block1 table)
    (on block7 block1)
    (on block10 block7)
    (on block6 block10)
    (on block13 block6)
    (on block4 table)
  )
  (:goal
    (and (on block5 table)
         (on block14 block5)
         (on block12 block14)
         (on block4 block12)
         (on block8 block4)
         (on block2 table)
         (on block3 block2)
         (on block10 block3)
         (on block7 block10)
         (on block13 block7)
         (on block6 table)
         (on block1 block6)
         (on block11 block1)
         (on block15 block11)
         (on block9 table))
  )
)
