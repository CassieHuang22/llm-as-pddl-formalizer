(define (problem mystery_blocksworld-p21)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves b c)
    (craves c a)
    (craves d b)
    (harmony)
    (planet a)
    (province d)
  )
  (:goal (and 
    (craves b a)
  ))
)