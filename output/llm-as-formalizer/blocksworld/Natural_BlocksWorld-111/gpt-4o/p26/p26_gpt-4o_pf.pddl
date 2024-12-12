(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 block15 - block
  )
  (:init
    (ontable block1)
    (ontable block3)
    (on block13 block3)
    (on block15 block13)
    (on block9 block15)
    (ontable block4)
    (on block14 block4)
    (on block8 block14)
    (ontable block10)
    (ontable block11)
    (on block2 block11)
    (ontable block12)
    (ontable block6)
    (on block7 block6)
    (on block5 block7)
    (clear block8)
    (clear block5)
    (clear block9)
    (armempty)
  )
  (:goal (and
    (ontable block13)
    (on block2 block13)
    (ontable block9)
    (ontable block1)
    (ontable block11)
    (ontable block7)
    (on block12 block7)
    (ontable block14)
    (on block5 block14)
    (on block8 block5)
    (ontable block10)
    (ontable block15)
    (ontable block4)
    (on block6 block4)
    (on block3 block6)
  ))
)