(define (problem blocksworld-p70)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 )
  (:init 
    (on-table block2)
    (clear block2)
    (on-table block9)
    (clear block9)
    (on-table block4)
    (clear block4)
    (on-table block1)
    (clear block1)
    (on-table block7)
    (clear block7)
    (on-table block8)
    (on block5 block8)
    (clear block5)
    (on-table block3)
    (on block6 block3)
    (clear block6)
    (arm-empty)
  )
  (:goal (and 
    (on-table block2)
    (on-table block3)
    (on-table block5)
    (on-table block1)
    (on-table block6)
    (on block7 block6)
    (on-table block9)
    (on block4 block9)
    (on-table block8)
  ))
)