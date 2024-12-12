(define (problem blocks-15)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10
    block11 block12 block13 block14 block15 - block
  )
  (:init
    (ontable block11) (on block3 block11)
    (ontable block10)
    (ontable block1)
    (ontable block8)
    (ontable block12)
    (ontable block15) (on block5 block15) (on block6 block5) (on block14 block6)
    (ontable block9) (on block4 block9)
    (ontable block7) (on block13 block7)
    (ontable block2)
    (clear block3) (clear block12) (clear block14) (clear block4) (clear block13) (clear block2)
    (clear block10) (clear block1)
    (armempty)
  )
  (:goal (and
    (ontable block8) (on block12 block8) (on block13 block12) (on block4 block13)
    (on block2 block4) (on block7 block2) (on block15 block7) (on block14 block15)
    (ontable block3) (on block6 block3) (on block11 block6) (on block10 block11)
    (on block5 block10) (on block9 block5)
    (ontable block1)
  ))
)