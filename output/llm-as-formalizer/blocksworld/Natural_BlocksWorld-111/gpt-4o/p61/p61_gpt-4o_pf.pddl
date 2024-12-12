(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9
  )
  (:init
    (ontable block7)
    (on block2 block7)
    (on block9 block2)
    (on block1 block9)
    (on block4 block1)
    (on block6 block4)
    (on block5 block6)
    (on block3 block5)
    (on block8 block3)
    (clear block8)
    (handempty)
  )
  (:goal
    (and
      (ontable block8)
      (on block9 block8)
      (ontable block2)
      (on block4 block2)
      (on block3 block4)
      (on block7 block3)
      (ontable block6)
      (ontable block1)
      (on block5 block1)
    )
  )
)