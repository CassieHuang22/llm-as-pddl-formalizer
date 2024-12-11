(define (problem mystery_blocksworld-p42)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a d)
    (craves d b)
    (harmony)
    (planet b)
    (planet c)
    (province a)
    (province c)
  )
  (:goal (and 
    (craves a c)
    (craves b d)
  ))
)