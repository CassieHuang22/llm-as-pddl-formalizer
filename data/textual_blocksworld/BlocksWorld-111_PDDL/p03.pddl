(define (problem blocksworld-p03)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 )
  (:init 
    (on-table block12)
    (on block6 block12)
    (on block1 block6)
    (on block3 block1)
    (clear block3)
    (on-table block5)
    (clear block5)
    (on-table block8)
    (on block10 block8)
    (clear block10)
    (on-table block7)
    (on block13 block7)
    (on block4 block13)
    (on block11 block4)
    (on block2 block11)
    (on block9 block2)
    (clear block9)
    (arm-empty)
  )
  (:goal (and 
    (on-table block3)
    (on-table block8)
    (on block7 block8)
    (on-table block5)
    (on block10 block5)
    (on-table block1)
    (on block13 block1)
    (on block12 block13)
    (on block9 block12)
    (on block2 block9)
    (on block4 block2)
    (on-table block11)
    (on block6 block11)
  ))
)