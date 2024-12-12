(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 - block
  )
  (:init
    (ontable block3) (ontable block8) (ontable block10) (ontable block4)
    (ontable block6) (ontable block5) (ontable block7)
    (on block1 block10)
    (on block2 block1)
    (on block9 block6)
    (clear block2) (clear block5) (clear block7)
    (clear block9)
    (handempty)
  )
  (:goal
    (and
      (ontable block3) (ontable block6) (ontable block7)
      (ontable block2) (ontable block10) (ontable block5)
      (ontable block4) (ontable block8) (ontable block9)
      (on block1 block8)
    )
  )
)