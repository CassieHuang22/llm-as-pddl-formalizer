(define (problem mystery_blocksworld-p58)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a d)
    (craves c a)
    (harmony)
    (planet b)
    (planet d)
    (province b)
    (province c)
  )
  (:goal (and 
    (craves a b)
    (craves c a)
    (craves d c)
  ))
)