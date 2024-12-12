(define (problem blocksworld-instance)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 block10)

  (:init
    (ontable block2) (ontable block6) (ontable block9) (ontable block7)
    (ontable block5) (ontable block1) (ontable block10) (ontable block8)
    (ontable block3) (ontable block4)
    (clear block2) (clear block6) (clear block9) (clear block7)
    (clear block5) (clear block1) (clear block10) (clear block8)
    (clear block3) (clear block4)
    (armempty)
  )

  (:goal
    (and
      (ontable block8) (on block7 block8)
      (ontable block9) (on block10 block9) (on block3 block10)
      (on block5 block3) (on block2 block5)
      (ontable block4)
      (ontable block6)
      (ontable block1)
    )
  )
)
