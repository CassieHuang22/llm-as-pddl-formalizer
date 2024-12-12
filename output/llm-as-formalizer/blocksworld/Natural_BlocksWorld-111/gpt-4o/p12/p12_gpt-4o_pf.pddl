(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 - block
    block2 - block
    block3 - block
    block4 - block
    block5 - block
    block6 - block
    block7 - block
    block8 - block
    block9 - block
    block10 - block
    block11 - block
    block12 - block
  )
  (:init
    (ontable block9)
    (on block2 block9)
    (on block1 block2)
    (on block6 block1)
    (ontable block7)
    (on block5 block7)
    (ontable block10)
    (on block4 block10)
    (on block3 block4)
    (on block12 block3)
    (on block8 block12)
    (on block11 block8)
    (clear block6)
    (clear block11)
    (clear block5)
    (armempty)
  )
  (:goal
    (and
      (ontable block9)
      (ontable block12)
      (ontable block10)
      (ontable block5)
      (ontable block6)
      (ontable block7)
      (ontable block2)
      (ontable block3)
      (ontable block4)
      (ontable block8)
      (on block11 block5)
      (on block1 block4)
    )
  )
)