(define (problem blocksworld-p41)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 )
  (:init 
    (on-table block6)
    (on block2 block6)
    (on block8 block2)
    (on block10 block8)
    (on block3 block10)
    (clear block3)
    (on-table block9)
    (clear block9)
    (on-table block4)
    (on block1 block4)
    (clear block1)
    (on-table block5)
    (clear block5)
    (on-table block7)
    (clear block7)
    (arm-empty)
  )
  (:goal (and 
    (on-table block9)
    (on-table block10)
    (on-table block3)
    (on block6 block3)
    (on-table block4)
    (on-table block7)
    (on-table block2)
    (on-table block5)
    (on-table block8)
    (on-table block1)
  ))
)