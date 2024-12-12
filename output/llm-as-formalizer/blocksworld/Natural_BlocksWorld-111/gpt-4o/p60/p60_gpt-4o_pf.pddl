(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects 
    block1 block2 block3 block4 block5 block6 block7
  )
  (:init 
    (ontable block3) (clear block3)
    (ontable block5) (clear block5)
    (ontable block7) 
    (on block1 block7) (clear block1)
    (ontable block2) (clear block2)
    (ontable block6) (clear block6)
    (ontable block4) (clear block4)
    (armempty)
  )   
  (:goal 
    (and 
      (ontable block5) (on block2 block5) (clear block2)
      (ontable block4) (on block7 block4) (clear block6)
      (on block6 block7) (clear block1)
      (on block1 block6)
      (ontable block3) (clear block3)
    )
  )
)