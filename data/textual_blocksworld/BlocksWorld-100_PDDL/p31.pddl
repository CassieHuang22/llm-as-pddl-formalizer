(define (problem blocksworld-p38)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 )
  (:init 
    (on-table block1)
    (on block3 block1)
    (clear block3)
    (on-table block9)
    (on block7 block9)
    (on block2 block7)
    (on block5 block2)
    (on block6 block5)
    (on block8 block6)
    (on block4 block8)
    (clear block4)
    (arm-empty)
  )
  (:goal (and 
    (on-table block8)
    (on block9 block8)
    (on-table block3)
    (on block2 block3)
    (on-table block6)
    (on-table block4)
    (on block1 block4)
    (on-table block5)
    (on block7 block5)
  ))
)