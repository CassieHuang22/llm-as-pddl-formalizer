(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 - block)
  (:init
    (ontable block2) (ontable block9) (ontable block4)
    (ontable block1) (ontable block7) (ontable block8)
    (ontable block3)
    (on block5 block8)
    (on block6 block3)
    (clear block5)
    (clear block4)
    (clear block6)
    (clear block7)
    (handempty))
  (:goal
    (and
      (ontable block2) (ontable block3)
      (ontable block5) (ontable block1)
      (ontable block6) (ontable block8)
      (ontable block9) (on block4 block9)
      (on block7 block6))))
)