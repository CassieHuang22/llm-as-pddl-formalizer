(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 - block
  )
  (:init
    (on-table block14)
    (on block13 block14)
    (on block5 block13)
    (on block9 block5)
    (on block11 block9)
    (on block2 block11)
    (on block6 block2)
    (on block7 block6)
    (on block10 block7)
    (on block8 block10)
    (on block12 block8)
    (on-table block1)
    (on block3 block1)
    (on block4 block3)
    (clear block12)
    (clear block4)
    (arm-empty)
  )
  (:goal
    (and
      (on-table block7)
      (on-table block13)
      (on-table block2)
      (on-table block6)
      (on-table block1)
      (on-table block11)
      (on-table block14)
      (on-table block3)
      (on-table block4)
      (on-table block8)
      (on-table block9)
      (on-table block12)
      (on-table block10)
      (on block5 block11)
    )
  )
)