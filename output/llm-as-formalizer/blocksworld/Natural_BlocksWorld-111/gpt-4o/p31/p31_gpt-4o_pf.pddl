(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8
    block9 block10 block11 block12 block13
  )
  (:init
    (ontable block3) (on block2 block3) (on block1 block2)
    (ontable block8)
    (ontable block12) (ontable block13) (on block9 block13)
    (ontable block6) (ontable block11) (ontable block7) (ontable block10)
    (ontable block5) (ontable block4)
    (clear block1)
    (clear block8)
    (clear block9)
    (clear block11)
    (clear block10)
    (clear block4)
    (clear block5)
    (handempty)
  )
  (:goal
    (and
      (ontable block13)
      (ontable block6)
      (ontable block9)
      (ontable block7) (on block1 block7) (on block10 block1)
      (ontable block4)
      (ontable block12) (on block2 block12)
      (ontable block5) (on block11 block5) (on block3 block11) (on block8 block3)
      (clear block10)
      (clear block2)
      (clear block6)
      (clear block9)
      (clear block4)
      (clear block12)
      (clear block8)
    )
  )
)