(define (problem mystery_blocksworld-p26)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves b a)
    (craves d c)
    (harmony)
    (planet a)
    (planet c)
    (province b)
    (province d)
  )
  (:goal (and 
    (craves a b)
    (craves c d)
    (craves d a)
  ))
)