(define (problem blocksworld-p100)
  (:domain blocksworld)
  (:objects a b c d e )
  (:init 
    (on-table a)
    (on c a)
    (clear c)
    (on-table b)
    (on e b)
    (clear e)
    (on-table d)
    (clear d)
    (arm-empty)
  )
  (:goal (and 
    (on-table e)
    (on d e)
    (on c d)
    (on b c)
    (on a b)
  ))
)