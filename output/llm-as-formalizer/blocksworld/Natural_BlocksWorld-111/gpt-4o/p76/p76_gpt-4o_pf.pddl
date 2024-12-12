(define (problem blocksworld-problem) (:domain blocksworld)
  (:objects
    block4 block3 block12 block5 block7 block1 block8
    block10 block11 block6 block2 block9 block13 block14
  )
  (:init
    (ontable block4) (on block3 block4) (clear block3)
    (ontable block12) (ontable block5) (ontable block7) (on block2 block7) (clear block2)
    (ontable block1) (ontable block8) (ontable block10) (on block9 block10) (clear block9)
    (ontable block11) (ontable block6) (on block13 block6) (on block14 block13) (clear block14)
    (arm-empty)
  )
  (:goal
    (and
      (ontable block7) (on block2 block7) (on block11 block2)
      (on block1 block11) (on block3 block1)
      (ontable block6) (on block5 block6) (on block10 block5)
      (on block13 block10) (on block12 block13) (on block14 block12)
      (on block9 block14) (on block8 block9) (on block4 block8)
    )
  )
)