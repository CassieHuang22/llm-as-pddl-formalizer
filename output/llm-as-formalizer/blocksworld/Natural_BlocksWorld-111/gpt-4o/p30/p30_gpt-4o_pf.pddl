(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11
  )
  (:init
    (ontable block1) (clear block1)
    (ontable block2) (clear block2)
    (ontable block3) (clear block3)
    (ontable block4) (clear block4)
    (ontable block5) (clear block5)
    (ontable block6) (clear block6)
    (ontable block7) (clear block7)
    (ontable block8) (clear block8)
    (ontable block9) (clear block9)
    (ontable block10) (clear block10)
    (ontable block11) (clear block11)
    (armempty)
  )
  (:goal
    (and
      (ontable block11)
      (on block8 block11)
      (on block2 block8)
      (on block4 block2)
      (on block10 block4)
      (on block1 block10)
      (on block5 block1)
      (on block6 block5)
      (on block3 block6)
      (on block7 block3)
      (on block9 block7)
    )
  )
)
