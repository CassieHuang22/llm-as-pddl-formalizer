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
  )

  (:init
    (ontable block3)
    (ontable block4)
    (ontable block10)
    (ontable block7)
    (ontable block2)
    (ontable block6)
    (ontable block1)
    (ontable block5)
    (ontable block9)
    (on block8 block10)
    (clear block8)
    (clear block3)
    (clear block4)
    (clear block7)
    (clear block2)
    (clear block6)
    (clear block1)
    (clear block5)
    (clear block9)
    (clear block10)
    (armempty)
  )

  (:goal
    (and
      (ontable block1)
      (ontable block5)
      (on block7 block5)
      (on block8 block7)
      (on block4 block8)
      (on block2 block4)
      (ontable block6)
      (on block3 block6)
      (on block9 block3)
      (ontable block10)
      (clear block2)
      (clear block9)
      (armempty)
    )
  )
)
