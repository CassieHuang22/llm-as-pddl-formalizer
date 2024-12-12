(define (problem rearrange-blocks)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 
    block6 block7 block8 block9 block10 block11 block12 block13 block14 - block)
  (:init
    (ontable block3)
    (ontable block4)
    (ontable block5)
    (ontable block7)
    (ontable block9)
    (clear block6)
    (clear block11)
    (clear block9)
    (clear block2)
    (clear block12)
    (clear block13)
    (on block2 block1)
    (on block1 block5)
    (on block12 block13)
    (on block10 block4)
    (on block8 block10)
    (on block6 block8)
    (on block11 block14)
    (armempty)
  )
  (:goal
    (and
      (ontable block3)
      (on block10 block3)
      (ontable block6)
      (on block8 block6)
      (ontable block4)
      (ontable block7)
      (ontable block5)
      (on block13 block7)
      (on block2 block5)
      (on block12 block2)
      (on block14 block12)
      (on block9 block14)
      (on block1 block9)
      (on block11 block1)
    )
  )
)
