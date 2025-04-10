(define (problem blocks-problem)
  (:domain blocks)
  (:objects b1 b2 b3 b4)
  (:init
    (on-table b1)
    (on-table b2)
    (on-table b3)
    (on-table b4)
    (clear b1)
    (clear b2)
    (clear b3)
    (clear b4)
    (arm-empty)
  )
  (:goal
    (and
      (on-table b1)
      (on-table b2)
      (on-table b3)
      (on-table b4)
    )
  )
)