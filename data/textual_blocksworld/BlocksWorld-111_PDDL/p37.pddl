(define (problem blocksworld-p37)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 )
  (:init 
    (on-table block8)
    (clear block8)
    (on-table block2)
    (clear block2)
    (on-table block4)
    (on block1 block4)
    (on block3 block1)
    (clear block3)
    (on-table block7)
    (clear block7)
    (on-table block6)
    (clear block6)
    (on-table block5)
    (clear block5)
    (arm-empty)
  )
  (:goal (and 
    (on-table block3)
    (on-table block5)
    (on-table block6)
    (on block7 block6)
    (on-table block2)
    (on block1 block2)
    (on-table block4)
    (on-table block8)
  ))
)