(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 - block
  )
  (:init
    (ontable block7) (ontable block12) (ontable block6) (ontable block1)
    (ontable block11) (ontable block9) (ontable block4) (ontable block8)
    (ontable block5)
    (on block2 block7) (on block3 block2) (on block13 block12) (on block10 block4)
    (clear block3) (clear block13) (clear block10)
    (clear block6) (clear block1) (clear block11)
    (clear block9) (clear block8) (clear block5)
    (arm-empty)
  )
  (:goal
    (and
      (ontable block8) (ontable block6) (ontable block2)
      (ontable block4) (ontable block11) (ontable block12)
      (ontable block3) (ontable block9) (ontable block1)
      (ontable block10) (ontable block5) (ontable block7)
      (ontable block13)
      (clear block8) (clear block6) (clear block2)
      (clear block4) (clear block11) (clear block12)
      (clear block3) (clear block9) (clear block1)
      (clear block10) (clear block5) (clear block7)
      (clear block13)
      (arm-empty)
    )
  )
)