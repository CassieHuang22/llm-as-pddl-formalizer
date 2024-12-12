
(define (problem blocksworld-problem)
  (:domain blocksworld)

  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9
  )

  (:init
    (ontable block1)
    (ontable block2)
    (ontable block3)
    (ontable block4)
    (ontable block5)
    (ontable block6)
    (ontable block7)
    (ontable block8)
    (ontable block9)
    (clear block1)
    (clear block2)
    (clear block3)
    (clear block4)
    (clear block5)
    (clear block6)
    (clear block7)
    (clear block8)
    (clear block9)
    (handempty)
  )

  (:goal
    (and
      (on block3 block8)
      (on block6 block3)
      (on block5 block6)
      (on block2 block5)
      (on block1 block2)
      (on block9 block1)
      (on block4 block9)
      (on block7 block4)
      (ontable block8)
    )
  )
)
