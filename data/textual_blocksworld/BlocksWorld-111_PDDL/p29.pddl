(define (problem blocksworld-p29)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 )
  (:init 
    (on-table block7)
    (clear block7)
    (on-table block5)
    (clear block5)
    (on-table block6)
    (clear block6)
    (on-table block1)
    (clear block1)
    (on-table block4)
    (clear block4)
    (on-table block9)
    (clear block9)
    (on-table block3)
    (clear block3)
    (on-table block8)
    (clear block8)
    (on-table block2)
    (clear block2)
    (arm-empty)
  )
  (:goal (and 
    (on-table block9)
    (on block3 block9)
    (on block2 block3)
    (on block4 block2)
    (on-table block5)
    (on block1 block5)
    (on block6 block1)
    (on-table block8)
    (on block7 block8)
  ))
)