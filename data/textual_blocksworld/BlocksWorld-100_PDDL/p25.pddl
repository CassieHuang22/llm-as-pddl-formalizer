(define (problem blocksworld-p30)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 )
  (:init 
    (on-table block11)
    (clear block11)
    (on-table block5)
    (clear block5)
    (on-table block7)
    (clear block7)
    (on-table block1)
    (clear block1)
    (on-table block3)
    (clear block3)
    (on-table block8)
    (clear block8)
    (on-table block10)
    (clear block10)
    (on-table block9)
    (clear block9)
    (on-table block4)
    (clear block4)
    (on-table block6)
    (clear block6)
    (on-table block2)
    (clear block2)
    (arm-empty)
  )
  (:goal (and 
    (on-table block11)
    (on block8 block11)
    (on block2 block8)
    (on block4 block2)
    (on block10 block4)
    (on block1 block10)
    (on block5 block1)
    (on block6 block5)
    (on block3 block6)
    (on block7 block3)
    (on block9 block7)
  ))
)