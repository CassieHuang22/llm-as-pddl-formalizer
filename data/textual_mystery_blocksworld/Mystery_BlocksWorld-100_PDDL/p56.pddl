(define (problem mystery_blocksworld-p56)
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
    (craves b a)
    (craves c b)
  ))
)