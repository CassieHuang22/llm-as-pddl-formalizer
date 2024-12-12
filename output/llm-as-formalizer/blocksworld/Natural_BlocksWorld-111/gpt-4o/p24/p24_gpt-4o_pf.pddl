(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9
    block10 block11 block12 block13 block14 block15 - block
  )
  (:init
    (ontable block1) (ontable block2) (ontable block3)
    (ontable block4) (ontable block5) (ontable block6)
    (ontable block7) (ontable block8) (ontable block9)
    (ontable block10) (ontable block11) (ontable block12)
    (ontable block13) (ontable block14) (ontable block15)
    (clear block1) (clear block2) (clear block3)
    (clear block4) (clear block5) (clear block6)
    (clear block7) (clear block8) (clear block9)
    (clear block10) (clear block11) (clear block12)
    (clear block13) (clear block14) (clear block15)
    (armempty)
  )
  (:goal (and
    (ontable block15) (on block8 block15) (on block2 block8)
    (ontable block6) (on block3 block6) (on block9 block3)
    (ontable block11) (on block7 block11) (on block13 block7)
    (on block1 block13) (on block5 block1) (on block14 block5)
    (ontable block10) (on block12 block10) (on block4 block12)
  ))
)