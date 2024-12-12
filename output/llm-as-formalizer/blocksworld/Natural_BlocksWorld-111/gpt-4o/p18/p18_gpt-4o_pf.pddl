(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 - block
  )
  (:init
    (ontable block11)
    (ontable block5)
    (ontable block3)
    (ontable block4)
    (ontable block12)
    (ontable block13)
    (ontable block10)
    (ontable block2)
    (on block1 block5)
    (on block6 block1)
    (on block9 block6)
    (on block14 block4)
    (on block8 block12)
    (on block7 block13)
    (clear block9)
    (clear block8)
    (clear block7)
    (clear block2)
    (armempty)
  )
  (:goal (and
    (ontable block14)
    (ontable block8)
    (ontable block1)
    (ontable block5)
    (ontable block7)
    (ontable block10)
    (ontable block12)
    (ontable block9)
    (ontable block3)
    (ontable block13)
    (on block2 block7)
    (on block4 block10)
    (on block11 block3)
    (on block6 block13)
  ))
)
