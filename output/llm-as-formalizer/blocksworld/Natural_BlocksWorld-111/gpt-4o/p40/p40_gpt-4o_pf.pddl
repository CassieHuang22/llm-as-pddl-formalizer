
(define (problem blocksworld-problem)
  (:domain blocksworld)

  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8
    block9 block10 block11 block12 block13 block14 block15
  )

  (:init
    (ontable block10) (ontable block2) (ontable block11)
    (ontable block14) (ontable block1) (ontable block8)
    (ontable block12) (ontable block13) (ontable block5)
    (ontable block4) (ontable block15)
    (on block7 block14) (on block6 block13) (on block9 block5)
    (on block3 block15)
    (clear block7) (clear block6) (clear block9) (clear block3)
    (clear block4) (clear block8) (clear block12) (clear block11)
    (clear block10) (clear block2) (clear block1)
    (armempty)
  )

  (:goal
    (and
      (ontable block8) (ontable block4) (ontable block10)
      (ontable block7) (ontable block6) (ontable block1)
      (ontable block14) (ontable block3) (ontable block15)
      (ontable block9) (ontable block5) (ontable block2)
      (ontable block12)
      (on block11 block15) (on block13 block5)
      (clear block11) (clear block13)
    )
  )
)
