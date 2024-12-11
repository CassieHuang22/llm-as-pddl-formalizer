(define (problem mystery_blocksworld-p60)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a c)
    (craves c b)
    (craves d a)
    (harmony)
    (planet b)
    (province d)
  )
  (:goal (and 
    (craves b a)
    (craves c d)
    (craves d b)
  ))
)