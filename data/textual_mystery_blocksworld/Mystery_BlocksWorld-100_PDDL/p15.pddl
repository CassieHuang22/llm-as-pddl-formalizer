(define (problem mystery_blocksworld-p15)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a c)
    (craves c d)
    (harmony)
    (planet b)
    (planet d)
    (province a)
    (province b)
  )
  (:goal (and 
    (craves a d)
  ))
)