(define (problem blocksworld-p35)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 )
  (:init 
    (on-table block7)
    (on block2 block7)
    (clear block2)
    (on-table block3)
    (on block5 block3)
    (on block1 block5)
    (clear block1)
    (on-table block6)
    (on block4 block6)
    (clear block4)
    (arm-empty)
  )
  (:goal (and 
    (on-table block1)
    (on block4 block1)
    (on block2 block4)
    (on-table block7)
    (on block3 block7)
    (on block6 block3)
    (on block5 block6)
  ))
)