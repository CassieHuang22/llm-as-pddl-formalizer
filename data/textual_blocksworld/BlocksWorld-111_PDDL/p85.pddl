(define (problem blocksworld-p85)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 )
  (:init 
    (on-table block12)
    (on block8 block12)
    (clear block8)
    (on-table block4)
    (clear block4)
    (on-table block6)
    (clear block6)
    (on-table block5)
    (clear block5)
    (on-table block7)
    (clear block7)
    (on-table block1)
    (clear block1)
    (on-table block13)
    (clear block13)
    (on-table block11)
    (clear block11)
    (on-table block9)
    (clear block9)
    (on-table block3)
    (on block14 block3)
    (clear block14)
    (on-table block10)
    (clear block10)
    (on-table block2)
    (clear block2)
    (arm-empty)
  )
  (:goal (and 
    (on-table block1)
    (on-table block10)
    (on-table block4)
    (on-table block9)
    (on-table block8)
    (on-table block6)
    (on block7 block6)
    (on-table block13)
    (on-table block14)
    (on-table block12)
    (on-table block11)
    (on-table block3)
    (on-table block2)
    (on-table block5)
  ))
)