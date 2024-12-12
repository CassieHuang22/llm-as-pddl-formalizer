(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 - block
    block2 - block
    block3 - block
    block4 - block
    block5 - block
    block6 - block
    block7 - block
    block8 - block)

  (:init
    (on block1 block6)
    (on-table block6)
    (on-table block5)
    (on-table block2)
    (on-table block7)
    (on block8 block4)
    (on block3 block8)
    (on-table block4)
    (clear block1)
    (clear block3)
    (clear block2)
    (clear block5)
    (clear block7)
    (empty))

  (:goal
    (and
      (on-table block1)
      (on-table block6)
      (on-table block2)
      (on-table block3)
      (on-table block5)
      (on-table block4)
      (on-table block8)
      (on-table block7))))