(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 block2 block3)
  (:init
    (clear block1)
    (on block1 block2)
    (ontable block2)
    (ontable block3)
    (clear block3)
    (handempty)
  )
  (:goal
    (and
      (ontable block3)
      (on block2 block3)
      (on block1 block2)
    )
  )
)