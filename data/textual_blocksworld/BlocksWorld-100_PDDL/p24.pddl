(define (problem blocksworld-p27)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 )
  (:init 
    (on-table block3)
    (on block14 block3)
    (on block7 block14)
    (on block11 block7)
    (clear block11)
    (on-table block10)
    (on block12 block10)
    (on block5 block12)
    (on block6 block5)
    (on block8 block6)
    (on block4 block8)
    (on block9 block4)
    (on block13 block9)
    (on block2 block13)
    (on block1 block2)
    (clear block1)
    (arm-empty)
  )
  (:goal (and 
    (on-table block14)
    (on block4 block14)
    (on block1 block4)
    (on-table block11)
    (on block5 block11)
    (on block10 block5)
    (on block6 block10)
    (on block12 block6)
    (on block3 block12)
    (on block7 block3)
    (on block13 block7)
    (on block8 block13)
    (on block9 block8)
    (on block2 block9)
  ))
)