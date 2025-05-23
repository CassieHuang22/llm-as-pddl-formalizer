(define (problem blocks-problem)
  (:domain blocks)
  (:objects 
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12 block13 block14
  )
  (:init
    (clear block1)
    (clear block2)
    (clear block3)
    (clear block4)
    (clear block6)
    (clear block7)
    (clear block13)
    (arm-empty)
    (on block1 block9)
    (on block2 block12)
    (on block3 block8)
    (on block4 block14)
    (on block6 block10)
    (on block9 block11)
    (on block10 block5)
    (ontable block5)
    (ontable block7)
    (ontable block8)
    (ontable block11)
    (ontable block12)
    (ontable block13)
    (ontable block14)
  )
  (:goal
    (and
      (on block1 block2)
      (on block2 block4)
      (on block3 block9)
      (on block5 block7)
      (on block6 block10)
      (on block8 block5)
      (on block9 block8)
      (on block11 block13)
      (on block12 block3)
      (on block13 block6)
      (on block14 block12)
      (ontable block4)
      (ontable block7)
      (ontable block10)
    )
  )
)