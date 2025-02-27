(define (problem blocksworld-p101)
  (:domain blocksworld)
  (:objects a b c d e f )
  (:init 
    (on-table a)
    (clear a)
    (on-table c)
    (on b c)
    (clear b)
    (on-table d)
    (on e d)
    (clear e)
    (on-table f)
    (clear f)
    (arm-empty)
  )
  (:goal (and 
    (on-table c)
    (on b c)
    (on a b)
    (on-table d)
    (on-table f)
    (on e f)
  ))
)