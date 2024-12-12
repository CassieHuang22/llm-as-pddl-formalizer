(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block3 block9 block4 block2 block14 block12 block7 block11
    block8 block1 block6 block10 block13 block5
  )
  (:init
    (ontable block3) (on block9 block3) (on block4 block9) (on block2 block4) (on block14 block2)
    (on block12 block14) (on block7 block12)
    (ontable block11) (on block8 block11) (on block1 block8) (on block6 block1) (on block10 block6)
    (on block13 block10)
    (ontable block5)
    (clear block7) (clear block13) (clear block5)
    (armempty)
  )
  (:goal
    (and
      (ontable block6) (on block8 block6) (ontable block5) (ontable block12)
      (ontable block1) (ontable block11) (on block14 block11) (on block7 block14)
      (ontable block4) (ontable block9) (on block3 block9)
      (ontable block13) (ontable block2) (ontable block10)
    )
  )
)

