(define (problem blocks-problem)
  (:domain blocks)
  (:objects b1 b2 b3)
  (:init
    (clear b1)
    (clear b3)
    (arm-empty)
    (on b1 b2)
    (ontable b2)
    (ontable b3)
  )
  (:goal
    (and
      (on b1 b2)
      (on b2 b3)
      (ontable b3)
    )
  )
)