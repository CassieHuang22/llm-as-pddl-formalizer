(define (problem mystery_blocksworld-p10)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a b)
    (craves c d)
    (harmony)
    (planet b)
    (planet d)
    (province a)
    (province c)
  )
  (:goal (and 
    (craves a b)
    (craves c a)
  ))
)