(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 - block
    block2 - block
    block3 - block
    block4 - block
    block5 - block
    block6 - block
  )
  (:init
    (ontable block1)
    (ontable block4)
    (ontable block6)
    (ontable block5)
    (on block3 block4)
    (on block2 block6)
    (clear block1)
    (clear block2)
    (clear block3)
    (clear block5)
    (handempty)
  )
  (:goal
    (and
      (ontable block5)
      (ontable block1)
      (ontable block2)
      (on block4 block3)
      (ontable block3)
      (ontable block6)
    )
  )
)
