(define (problem blocksworld-p96)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 )
  (:init 
    (on-table block5)
    (clear block5)
    (on-table block8)
    (on block2 block8)
    (clear block2)
    (on-table block4)
    (clear block4)
    (on-table block7)
    (clear block7)
    (on-table block3)
    (on block1 block3)
    (on block6 block1)
    (clear block6)
    (on-table block9)
    (clear block9)
    (arm-empty)
  )
  (:goal (and 
    (on-table block6)
    (on block1 block6)
    (on block4 block1)
    (on block9 block4)
    (on-table block2)
    (on block5 block2)
    (on block7 block5)
    (on-table block3)
    (on block8 block3)
  ))
)