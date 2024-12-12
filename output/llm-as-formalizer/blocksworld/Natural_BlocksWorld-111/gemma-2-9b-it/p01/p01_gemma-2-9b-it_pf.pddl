
(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 table)
  (:init
    (on block3 table)
    (on block4 table)
    (on block1 table)
    (on block2 table)
  )
  (:goal
    (and (on block4 table)
         (on block2 table)
         (on block1 table)
         (on block3 table))
  )
)
