(define (problem blocksworld-p16)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 )
  (:init 
    (on-table block7)
    (clear block7)
    (on-table block5)
    (on block1 block5)
    (on block2 block1)
    (clear block2)
    (on-table block13)
    (on block12 block13)
    (clear block12)
    (on-table block14)
    (on block11 block14)
    (clear block11)
    (on-table block3)
    (clear block3)
    (on-table block4)
    (on block10 block4)
    (on block8 block10)
    (on block6 block8)
    (clear block6)
    (on-table block9)
    (clear block9)
    (arm-empty)
  )
  (:goal (and 
    (on-table block3)
    (on block10 block3)
    (on-table block6)
    (on block8 block6)
    (on-table block4)
    (on-table block7)
    (on block13 block7)
    (on-table block5)
    (on block2 block5)
    (on block12 block2)
    (on block14 block12)
    (on block9 block14)
    (on block1 block9)
    (on block11 block1)
  ))
)