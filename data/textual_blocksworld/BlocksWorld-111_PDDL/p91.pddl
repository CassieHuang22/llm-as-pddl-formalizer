(define (problem blocksworld-p91)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 )
  (:init 
    (on-table block5)
    (on block4 block5)
    (on block1 block4)
    (on block2 block1)
    (clear block2)
    (on-table block6)
    (on block7 block6)
    (on block3 block7)
    (clear block3)
    (arm-empty)
  )
  (:goal (and 
    (on-table block3)
    (on block6 block3)
    (on-table block2)
    (on block5 block2)
    (on block1 block5)
    (on block7 block1)
    (on block4 block7)
  ))
)