(define (problem blocksworld-prob)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10
    block11 block12 block13 block14 block15 - block
  )
  (:init
    (ontable block1)
    (ontable block11)
    (ontable block14)
    (clear block5)
    (clear block10)
    (clear block1)
    (armempty)
    (on block3 block6)
    (on block5 block3)
    (on block8 block14)
    (on block7 block8)
    (on block9 block7)
    (on block4 block9)
    (on block15 block4)
    (on block12 block15)
    (on block2 block12)
    (on block13 block2)
    (on block10 block13)
  )
  (:goal
    (and
      (ontable block8)
      (ontable block15)
      (ontable block3)
      (on block7 block8)
      (on block12 block7)
      (on block5 block12)
      (on block13 block5)
      (on block4 block15)
      (on block11 block3)
      (on block2 block11)
      (on block9 block2)
      (on block14 block9)
      (on block10 block14)
      (on block6 block10)
      (on block1 block6)
    )
  )
)