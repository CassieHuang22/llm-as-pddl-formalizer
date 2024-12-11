(define (problem mystery_blocksworld-p74)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves b c)
    (harmony)
    (planet a)
    (planet c)
    (planet d)
    (province a)
    (province b)
    (province d)
  )
  (:goal (and 
    (craves a d)
    (craves b a)
    (craves c b)
  ))
)