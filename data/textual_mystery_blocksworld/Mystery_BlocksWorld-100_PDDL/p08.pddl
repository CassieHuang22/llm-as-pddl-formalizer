(define (problem mystery_blocksworld-p08)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a d)
    (craves c a)
    (craves d b)
    (harmony)
    (planet b)
    (province c)
  )
  (:goal (and 
    (craves a b)
    (craves b c)
  ))
)