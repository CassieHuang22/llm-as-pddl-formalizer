(define (problem mystery_blocksworld-p43)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a c)
    (craves c b)
    (harmony)
    (planet b)
    (planet d)
    (province a)
    (province d)
  )
  (:goal (and 
    (craves a b)
    (craves b d)
    (craves d c)
  ))
)