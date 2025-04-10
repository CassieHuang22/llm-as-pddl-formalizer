(define (problem blocks-problem)
  (:domain blocks-world)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 block15
  )
  (:init
    (clear block1)
    (clear block5)
    (clear block10)
    (clear block11)
    (arm-empty)
    (on-table block1)
    (on-table block6)
    (on-table block11)
    (on-table block14)
    (on block2 block12)
    (on block3 block6)
    (on block4 block9)
    (on block5 block3)
    (on block7 block8)
    (on block8 block14)
    (on block9 block7)
    (on block10 block13)
    (on block12 block15)
    (on block13 block2)
    (on block15 block4)
  )
  (:goal
    (and
      (on block1 block6)
      (on block2 block11)
      (on block4 block15)
      (on block5 block12)
      (on block6 block10)
      (on block7 block8)
      (on block9 block2)
      (on block10 block14)
      (on block11 block3)
      (on block12 block7)
      (on block13 block5)
      (on block14 block9)
      (on-table block3)
      (on-table block8)
      (on-table block15)
    )
  )
)