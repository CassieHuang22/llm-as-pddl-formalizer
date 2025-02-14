(define (problem blocksworld-p97)
  (:domain blocksworld)
  (:objects block1 block2 )
  (:init 
    (on-table block1)
    (on block2 block1)
    (clear block2)
    (arm-empty)
  )
  (:goal (and 
    (on-table block2)
    (on-table block1)
  ))
)