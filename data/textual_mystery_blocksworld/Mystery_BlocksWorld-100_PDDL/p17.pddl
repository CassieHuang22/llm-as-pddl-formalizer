(define (problem mystery_blocksworld-p17)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves b c)
    (craves c d)
    (harmony)
    (planet a)
    (planet d)
    (province a)
    (province b)
  )
  (:goal (and 
    (craves a d)
  ))
)