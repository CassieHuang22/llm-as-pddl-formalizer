(define (problem blocksworld-p05)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 )
  (:init 
    (on-table block8)
    (on block3 block8)
    (clear block3)
    (on-table block12)
    (on block2 block12)
    (clear block2)
    (on-table block5)
    (on block10 block5)
    (on block6 block10)
    (clear block6)
    (on-table block14)
    (on block4 block14)
    (clear block4)
    (on-table block11)
    (on block9 block11)
    (on block1 block9)
    (clear block1)
    (on-table block13)
    (clear block13)
    (on-table block7)
    (clear block7)
    (arm-empty)
  )
  (:goal (and 
    (on-table block7)
    (on block5 block7)
    (on block8 block5)
    (on block9 block8)
    (on block3 block9)
    (on block12 block3)
    (on block14 block12)
    (on-table block10)
    (on block6 block10)
    (on block13 block6)
    (on block11 block13)
    (on-table block4)
    (on block2 block4)
    (on block1 block2)
  ))
)