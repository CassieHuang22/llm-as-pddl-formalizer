(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    block1 block2 block3 block4 block5 block6 block7 block8 block9 block10 block11 - block
  )
  (:init
    (on block7 block5)(on block5 block2)(on block2 block8)(on-table block8)
    (on block6 block4)(on block4 block11)(on block11 block3)(on block3 block1)(on block1 block10)(on block10 block9)(on-table block9)
    (clear block7)(clear block6)(arm-empty)
  )
  (:goal
    (and
      (on block6 block3)(on block3 block1)(on block1 block10)(on block10 block8)(on block8 block5)(on block5 block9)(on block9 block2)(on block2 block11)(on block11 block4)(on block4 block7)
      (on-table block7)
    )
  )
)
