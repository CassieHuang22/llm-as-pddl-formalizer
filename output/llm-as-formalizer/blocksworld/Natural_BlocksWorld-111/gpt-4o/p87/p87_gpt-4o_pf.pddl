(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 - block
  )
  (:init
    (ontable block10) (clear block11)
    (on block6 block10) (on block4 block6) (on block13 block4)
    (on block3 block13) (on block2 block3) (on block5 block2)
    (on block1 block5) (on block12 block1) (on block9 block12)
    (on block7 block9) (on block8 block7) (on block11 block8)
    (handempty)
  )
  (:goal (and
    (ontable block11)
    (ontable block6) (on block8 block6)
    (ontable block3) (on block10 block3)
    (ontable block7) (on block9 block7)
    (ontable block12) (ontable block5) (ontable block2)
    (ontable block4) (on block13 block4)
    (ontable block1)
  ))
)