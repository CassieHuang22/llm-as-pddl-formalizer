(define (problem blocksworld-goal)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 - block)

  (:init
    (ontable block3)
    (on block6 block3)
    (on block5 block6)
    (on block4 block5)
    (on block1 block4)
    (on block2 block1)
    (clear block2)
    (handempty)
  )

  (:goal (and
    (ontable block1)
    (ontable block2)
    (on block6 block2)
    (ontable block4)
    (on block3 block4)
    (ontable block5)
  ))
)