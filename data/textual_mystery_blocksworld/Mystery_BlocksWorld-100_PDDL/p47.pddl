(define (problem mystery_blocksworld-p47)
  (:domain mystery_blocksworld)
  (:objects a b c d )
  (:init 
    (craves d c)
    (harmony)
    (planet a)
    (planet b)
    (planet c)
    (province a)
    (province b)
    (province d)
  )
  (:goal (and 
    (craves b c)
  ))
)