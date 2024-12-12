(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 - block)
  (:init
    (on-table block1)
    (on-table block2)
    (on-table block3)
    (on-table block4)
    (clear block1)
    (clear block2)
    (clear block3)
    (clear block4)
    (arm-empty))
  (:goal
    (and
      (on block2 block3)
      (on block4 block1)
      (on-table block1)
      (on-table block3)))