(define (problem blocksworld-p82)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 )
  (:init 
    (on-table block3)
    (on block7 block3)
    (clear block7)
    (on-table block10)
    (clear block10)
    (on-table block4)
    (clear block4)
    (on-table block2)
    (clear block2)
    (on-table block9)
    (clear block9)
    (on-table block1)
    (clear block1)
    (on-table block6)
    (clear block6)
    (on-table block5)
    (on block8 block5)
    (clear block8)
    (arm-empty)
  )
  (:goal (and 
    (on-table block6)
    (on-table block2)
    (on block7 block2)
    (on block4 block7)
    (on-table block10)
    (on block8 block10)
    (on block1 block8)
    (on block3 block1)
    (on block9 block3)
    (on block5 block9)
  ))
)