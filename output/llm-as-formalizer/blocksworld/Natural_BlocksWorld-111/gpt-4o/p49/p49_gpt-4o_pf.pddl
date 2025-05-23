(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 - block)
  (:init
    (ontable block5)
    (ontable block3)
    (ontable block2)
    (ontable block6)
    (on block1 block6)
    (ontable block4)
    (on block7 block4)
    (clear block1)
    (clear block3)
    (clear block2)
    (clear block5)
    (armempty)
  )
  (:goal
    (and
      (ontable block1)
      (ontable block4)
      (ontable block5)
      (ontable block2)
      (on block6 block4)
      (on block7 block6)
      (on block3 block5)
      (clear block1)
      (clear block2)
      (clear block3)
      (clear block7)
      (clear block6)
      (clear block4)
      (clear block5)
    )
  )
)