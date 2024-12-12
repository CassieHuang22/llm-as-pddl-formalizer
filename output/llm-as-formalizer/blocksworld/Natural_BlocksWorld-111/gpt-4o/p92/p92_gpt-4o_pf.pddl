(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11
  )
  (:init
    (clear block1) (clear block2) (clear block3) (clear block4) (clear block5) (clear block6)
    (clear block7) (clear block8) (clear block9) (clear block10) (clear block11)
    (on-table block1) (on-table block2) (on-table block3) (on-table block4)
    (on-table block5) (on-table block6) (on-table block7) (on-table block8)
    (on-table block9) (on-table block10) (on-table block11)
    (arm-empty)
  )
  (:goal
    (and
      (on block5 block2) (on-table block2)
      (on-table block8)
      (on block9 block11) (on-table block11)
      (on-table block4)
      (on block10 block1) (on-table block1)
      (on-table block3)
      (on block7 block6) (on-table block6)
    )
  )
)