(define (problem mystery_blocksworld-p89)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves b c)
    (craves c a)
    (harmony)
    (planet a)
    (planet d)
    (province b)
    (province d)
  )
  (:goal (and 
    (craves a c)
    (craves c b)
  ))
)