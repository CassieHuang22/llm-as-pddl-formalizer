(define (problem mystery_blocksworld-p86)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves c a)
    (craves d b)
    (harmony)
    (planet a)
    (planet b)
    (province c)
    (province d)
  )
  (:goal (and 
    (craves a d)
    (craves b c)
    (craves d b)
  ))
)