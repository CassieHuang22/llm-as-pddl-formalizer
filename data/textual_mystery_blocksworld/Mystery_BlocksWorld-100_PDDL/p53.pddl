(define (problem mystery_blocksworld-p53)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a d)
    (craves b c)
    (harmony)
    (planet c)
    (planet d)
    (province a)
    (province b)
  )
  (:goal (and 
    (craves a d)
    (craves b a)
    (craves c b)
  ))
)