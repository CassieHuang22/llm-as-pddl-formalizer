(define (problem mystery_blocksworld-p31)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves c d)
    (harmony)
    (planet a)
    (planet b)
    (planet d)
    (province a)
    (province b)
    (province c)
  )
  (:goal (and 
    (craves a b)
    (craves c a)
  ))
)