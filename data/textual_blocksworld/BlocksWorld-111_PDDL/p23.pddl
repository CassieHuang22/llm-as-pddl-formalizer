(define (problem blocksworld-p23)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 )
  (:init 
    (on-table block9)
    (clear block9)
    (on-table block11)
    (on block10 block11)
    (on block7 block10)
    (on block5 block7)
    (on block12 block5)
    (on block3 block12)
    (clear block3)
    (on-table block2)
    (clear block2)
    (on-table block6)
    (clear block6)
    (on-table block4)
    (clear block4)
    (on-table block1)
    (on block8 block1)
    (clear block8)
    (arm-empty)
  )
  (:goal (and 
    (on-table block11)
    (on block6 block11)
    (on-table block4)
    (on-table block3)
    (on block5 block3)
    (on-table block10)
    (on-table block12)
    (on block9 block12)
    (on-table block7)
    (on block2 block7)
    (on block8 block2)
    (on-table block1)
  ))
)