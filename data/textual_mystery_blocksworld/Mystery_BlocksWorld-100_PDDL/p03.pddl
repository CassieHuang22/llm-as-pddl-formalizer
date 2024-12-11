(define (problem mystery_blocksworld-p03)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves b c)
    (craves d b)
    (harmony)
    (planet a)
    (planet c)
    (province a)
    (province d)
  )
  (:goal (and 
    (craves a b)
    (craves c a)
    (craves d c)
  ))
)