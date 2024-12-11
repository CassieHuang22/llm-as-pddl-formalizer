(define (problem mystery_blocksworld-p93)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a c)
    (craves b d)
    (harmony)
    (planet c)
    (planet d)
    (province a)
    (province b)
  )
  (:goal (and 
    (craves a c)
    (craves b a)
    (craves c d)
  ))
)