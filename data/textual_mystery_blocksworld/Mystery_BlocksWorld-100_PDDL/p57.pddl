(define (problem mystery_blocksworld-p57)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a c)
    (craves b d)
    (craves d a)
    (harmony)
    (planet c)
    (province b)
  )
  (:goal (and 
    (craves d b)
  ))
)