(define (problem blocksworld-p17)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 )
  (:init 
    (on-table block2)
    (on block6 block2)
    (on block4 block6)
    (clear block4)
    (on-table block3)
    (clear block3)
    (on-table block1)
    (on block5 block1)
    (on block7 block5)
    (on block8 block7)
    (clear block8)
    (arm-empty)
  )
  (:goal (and 
    (on-table block5)
    (on block6 block5)
    (on-table block4)
    (on-table block1)
    (on-table block3)
    (on-table block7)
    (on-table block2)
    (on-table block8)
  ))
)