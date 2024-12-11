(define (problem mystery_blocksworld-p39)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves b a)
    (craves d b)
    (harmony)
    (planet a)
    (planet c)
    (province c)
    (province d)
  )
  (:goal (and 
    (craves a c)
    (craves b d)
    (craves d a)
  ))
)