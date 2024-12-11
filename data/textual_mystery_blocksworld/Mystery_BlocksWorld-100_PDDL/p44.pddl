(define (problem mystery_blocksworld-p44)
  (:domain mystery_blocksworld)
  (:objects a b c d e )
  (:init 
    (craves b c)
    (craves d e)
    (craves e b)
    (harmony)
    (planet a)
    (planet c)
    (province a)
    (province d)
  )
  (:goal (and 
    (craves c d)
    (craves e a)
  ))
)