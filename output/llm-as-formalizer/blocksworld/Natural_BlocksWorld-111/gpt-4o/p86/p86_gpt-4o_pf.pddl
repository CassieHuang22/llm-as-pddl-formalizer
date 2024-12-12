(define (problem rearrange-blocks)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 block12)
  
  (:init
    (ontable block10) (on block1 block10) (clear block1)
    (ontable block5) (on block4 block5) (on block2 block4) (clear block2)
    (ontable block7)
    (ontable block9) (on block6 block9) (clear block6)
    (ontable block3) (on block8 block3) (on block11 block8) (on block12 block11) (clear block12)
    (arm-empty))
  
  (:goal
    (and
      (ontable block11) (on block10 block11)
      (ontable block1) (ontable block5)
      (ontable block3) (ontable block7)
      (ontable block8) (ontable block9)
      (ontable block4) (ontable block6)
      (ontable block2) (ontable block12))))
)