(define (problem blocksworld-p86)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 )
  (:init 
    (on-table block10)
    (on block1 block10)
    (clear block1)
    (on-table block5)
    (on block4 block5)
    (on block2 block4)
    (clear block2)
    (on-table block7)
    (clear block7)
    (on-table block9)
    (on block6 block9)
    (clear block6)
    (on-table block3)
    (on block8 block3)
    (on block11 block8)
    (on block12 block11)
    (clear block12)
    (arm-empty)
  )
  (:goal (and 
    (on-table block11)
    (on block10 block11)
    (on-table block1)
    (on-table block5)
    (on-table block3)
    (on-table block7)
    (on-table block8)
    (on-table block9)
    (on-table block4)
    (on-table block6)
    (on-table block2)
    (on-table block12)
  ))
)