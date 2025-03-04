(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 - block
  )
  (:init
    (ontable block12)
    (on block13 block12)
    (ontable block1)
    (on block5 block1)
    (ontable block10)
    (on block3 block10)
    (ontable block11)
    (on block8 block11)
    (on block14 block8)
    (on block4 block14)
    (on block9 block4)
    (on block6 block9)
    (on block2 block6)
    (on block7 block2)
    (clear block7)
    (armempty)
  )
  (:goal (and
    (ontable block4)
    (on block1 block4)
    (ontable block10)
    (on block12 block10)
    (ontable block3)
    (on block7 block3)
    (on block11 block7)
    (ontable block14)
    (ontable block8)
    (on block5 block8)
    (ontable block6)
    (ontable block2)
    (ontable block13)
    (ontable block9)
  )))