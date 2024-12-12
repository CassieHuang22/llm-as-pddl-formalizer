(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects Block1 Block2 - block)
  (:init
    (on Block2 Block1)
    (on-table Block1)
    (clear Block2)
    (arm-empty)
  )
  (:goal
    (and
      (on-table Block1)
      (on-table Block2)
      (clear Block1)
      (clear Block2)
    )
  )
)