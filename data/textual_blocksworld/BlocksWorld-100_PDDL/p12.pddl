(define (problem blocksworld-p13)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 )
  (:init 
    (on-table block7)
    (clear block7)
    (on-table block11)
    (clear block11)
    (on-table block12)
    (on block10 block12)
    (on block9 block10)
    (clear block9)
    (on-table block5)
    (on block13 block5)
    (clear block13)
    (on-table block3)
    (on block8 block3)
    (on block4 block8)
    (clear block4)
    (on-table block14)
    (clear block14)
    (on-table block2)
    (clear block2)
    (on-table block1)
    (on block6 block1)
    (clear block6)
    (arm-empty)
  )
  (:goal (and 
    (on-table block6)
    (on-table block12)
    (on block3 block12)
    (on-table block1)
    (on block11 block1)
    (on-table block13)
    (on-table block4)
    (on-table block2)
    (on block10 block2)
    (on block9 block10)
    (on block14 block9)
    (on block7 block14)
    (on block8 block7)
    (on block5 block8)
  ))
)