(define (problem mystery_blocksworld-p92)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a d)
    (craves b c)
    (craves c a)
    (harmony)
    (planet d)
    (province b)
  )
  (:goal (and 
    (craves a b)
    (craves c d)
    (craves d a)
  ))
)