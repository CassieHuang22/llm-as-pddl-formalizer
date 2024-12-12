(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects block1 block2 block3 block4 block5 block6 block7 block8 block9 - block)
  (:init 
    (ontable block5) 
    (ontable block8) 
    (on block2 block8) 
    (ontable block4) 
    (ontable block7) 
    (ontable block3) 
    (on block1 block3) 
    (on block6 block1) 
    (ontable block9) 
    (clear block5) 
    (clear block2) 
    (clear block6) 
    (clear block7) 
    (clear block4) 
    (clear block9) 
    (arm-empty)
  )
  (:goal (and 
    (on block1 block6)
    (on block4 block1)
    (on block9 block4)
    (on block5 block2)
    (on block7 block5)
    (on block8 block3)
    (ontable block6)
    (ontable block2)
    (ontable block3)
  ))
)