(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 - block
  )
  (:init
    (ontable block9)
    (on block3 block9)
    (ontable block1)
    (ontable block10)
    (ontable block11)
    (on block4 block11)
    (ontable block2)
    (on block8 block2)
    (on block7 block8)
    (ontable block5)
    (ontable block6)
    (clear block1)
    (clear block5)
    (clear block6)
    (clear block7)
    (armempty)
  )
  (:goal
    (and
      (ontable block4)
      (ontable block2)
      (ontable block3)
      (on block5 block3)
      (ontable block10)
      (on block8 block10)
      (on block11 block8)
      (ontable block1)
      (ontable block6)
      (ontable block9)
      (on block7 block9)
      (clear block11)
      (clear block5)
      (clear block1)
      (clear block6)
      (clear block7)
    )
  )
)