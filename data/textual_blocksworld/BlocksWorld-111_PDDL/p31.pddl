(define (problem blocksworld-p31)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 )
  (:init 
    (on-table block8)
    (clear block8)
    (on-table block3)
    (on block2 block3)
    (on block1 block2)
    (clear block1)
    (on-table block12)
    (clear block12)
    (on-table block13)
    (on block9 block13)
    (clear block9)
    (on-table block6)
    (clear block6)
    (on-table block11)
    (clear block11)
    (on-table block7)
    (clear block7)
    (on-table block10)
    (clear block10)
    (on-table block5)
    (clear block5)
    (on-table block4)
    (clear block4)
    (arm-empty)
  )
  (:goal (and 
    (on-table block13)
    (on-table block6)
    (on-table block9)
    (on-table block7)
    (on block1 block7)
    (on block10 block1)
    (on-table block4)
    (on-table block12)
    (on block2 block12)
    (on-table block5)
    (on block11 block5)
    (on block3 block11)
    (on block8 block3)
  ))
)