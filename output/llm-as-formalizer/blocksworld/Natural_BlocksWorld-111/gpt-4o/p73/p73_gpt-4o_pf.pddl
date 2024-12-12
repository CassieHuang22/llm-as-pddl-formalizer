(define (problem rearrange-blocks)
  (:domain blocksworld)

  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 - block
  )

  (:init
    (ontable block8)
    (on block5 block8)
    (ontable block1)
    (on block3 block1)
    (on block2 block3)
    (on block9 block2)
    (ontable block7)
    (on block4 block7)
    (on block6 block4)
    (handempty)
    (clear block5)
    (clear block6)
    (clear block9)
  )

  (:goal
    (and
      (ontable block8)
      (ontable block6)
      (on block3 block6)
      (on block9 block3)
      (on block1 block9)
      (on block5 block1)
      (ontable block2)
      (on block7 block2)
      (ontable block4)
    )
  )
)