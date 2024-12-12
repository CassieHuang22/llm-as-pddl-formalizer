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
    block13 - block
    block14 - block
  )
  (:init
    (ontable block7)
    (ontable block11)
    (ontable block12)
    (ontable block5)
    (ontable block3)
    (ontable block14)
    (ontable block2)
    (ontable block1)
    (on block10 block12)
    (on block9 block10)
    (on block13 block5)
    (on block8 block3)
    (on block4 block8)
    (on block6 block1)
    (clear block4)
    (clear block9)
    (clear block13)
    (clear block6)
    (clear block11)
    (clear block14)
    (armempty)
  )
  (:goal
    (and
      (ontable block6)
      (ontable block12)
      (ontable block1)
      (ontable block13)
      (ontable block4)
      (ontable block2)
      (on block3 block12)
      (on block11 block1)
      (on block10 block2)
      (on block9 block10)
      (on block14 block9)
      (on block7 block14)
      (on block8 block7)
      (on block5 block8)
    )
  )
)