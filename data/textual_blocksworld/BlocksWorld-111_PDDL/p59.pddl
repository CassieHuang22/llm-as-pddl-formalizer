(define (problem blocksworld-p59)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 block15 )
  (:init 
    (on-table block6)
    (clear block6)
    (on-table block8)
    (clear block8)
    (on-table block4)
    (clear block4)
    (on-table block11)
    (on block13 block11)
    (clear block13)
    (on-table block12)
    (clear block12)
    (on-table block7)
    (clear block7)
    (on-table block9)
    (clear block9)
    (on-table block14)
    (on block15 block14)
    (on block10 block15)
    (on block3 block10)
    (on block2 block3)
    (on block1 block2)
    (clear block1)
    (on-table block5)
    (clear block5)
    (arm-empty)
  )
  (:goal (and 
    (on-table block9)
    (on block15 block9)
    (on block1 block15)
    (on block6 block1)
    (on block7 block6)
    (on block11 block7)
    (on block2 block11)
    (on block14 block2)
    (on block3 block14)
    (on block8 block3)
    (on block10 block8)
    (on block13 block10)
    (on block5 block13)
    (on block4 block5)
    (on block12 block4)
  ))
)