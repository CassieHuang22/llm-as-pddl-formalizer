(define (problem mystery_blocksworld-p80)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves a b)
    (craves c a)
    (craves d c)
    (harmony)
    (planet b)
    (province d)
  )
  (:goal (and 
    (craves a c)
    (craves b d)
    (craves d a)
  ))
)