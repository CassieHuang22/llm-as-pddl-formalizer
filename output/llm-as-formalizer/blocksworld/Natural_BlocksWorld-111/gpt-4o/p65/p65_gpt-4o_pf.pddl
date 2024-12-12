(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10
    block11 block12 block13 block14 block15 - block)
  (:init
    (ontable block7) (on block8 block7)
    (ontable block11) (on block5 block11) (on block12 block5) (on block6 block12)
    (ontable block15)
    (ontable block3) (on block13 block3)
    (ontable block2) (on block4 block2) (on block10 block4) (on block9 block10)
    (ontable block14)
    (ontable block1)
    (clear block1) (clear block9) (clear block13) (clear block6) (clear block15) (clear block8)
    (handempty)
  )
  (:goal
    (and
      (ontable block6)
      (on block2 block6)
      (on block9 block2)
      (on block5 block9)
      (on block12 block5)
      (on block8 block12)
      (on block10 block8)
      (on block3 block10)
      (on block15 block3)
      (on block14 block15)
      (on block13 block14)
      (on block7 block13)
      (on block11 block7)
      (on block4 block11)
      (on block1 block4)
    )
  )
)
