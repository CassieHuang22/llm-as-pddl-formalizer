(define (problem mystery_blocksworld-p13)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a b)
    (craves b c)
    (harmony)
    (planet c)
    (planet d)
    (province a)
    (province d)
  )
  (:goal (and 
    (craves b c)
    (craves d a)
  ))
)