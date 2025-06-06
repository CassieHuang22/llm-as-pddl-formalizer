
(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 .. block14 table)
  (:init
    (on block3 table)
    (on block9 block3)
    (on block4 block9)
    (on block2 block4)
    (on block14 block2)
    (on block12 block14)
    (on block7 block12)
    (on block11 table)
    (on block8 block11)
    (on block1 block8)
    (on block6 block1)
    (on block10 block6)
    (on block13 block10)
    (on block5 table)
  )
  (:goal
    (and (on block6 table)
         (on block8 block6)
         (on block5 table)
         (on block12 table)
         (on block1 table)
         (on block11 table)
         (on block14 block11)
         (on block7 block14)
         (on block4 table)
         (on block9 table)
         (on block3 block9)
         (on block13 table)
         (on block2 table)
         (on block10 table))
  )
)
