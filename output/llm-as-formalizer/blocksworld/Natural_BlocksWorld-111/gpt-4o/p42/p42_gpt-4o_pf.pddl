(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects 
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14 block15 - block)
  (:init 
    (handempty)
    (ontable block1) (clear block12)
    (on block13 block1) (clear block2)
    (on block15 block13)
    (on block4 block15)
    (on block12 block4)
    (ontable block14)
    (on block8 block14)
    (on block3 block8)
    (on block5 block3)
    (on block10 block5)
    (on block9 block10)
    (on block6 block9)
    (on block11 block6)
    (on block7 block11)
    (on block2 block7)
  )
  (:goal
    (and
      (ontable block15) (on block12 block15) (clear block12)
      (ontable block4) (clear block4)
      (ontable block14) (on block6 block14) (on block3 block6) (on block2 block3) (clear block2)
      (ontable block1) (on block7 block1) (on block10 block7) (clear block10)
      (ontable block13) (on block5 block13) (on block8 block5) (clear block8)
      (ontable block11) (on block9 block11) (clear block9)
    )
  )
)