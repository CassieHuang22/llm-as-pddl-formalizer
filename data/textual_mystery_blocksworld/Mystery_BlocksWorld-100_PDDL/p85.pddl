(define (problem mystery_blocksworld-p85)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a d)
    (craves b a)
    (craves c b)
    (harmony)
    (planet d)
    (province c)
  )
  (:goal (and 
    (craves c d)
    (craves d a)
  ))
)