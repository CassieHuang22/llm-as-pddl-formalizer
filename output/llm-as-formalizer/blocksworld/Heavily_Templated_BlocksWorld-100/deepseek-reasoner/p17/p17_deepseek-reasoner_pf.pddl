(define (problem blocks-problem)
  (:domain blocks)
  (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13)
  (:init
    (arm-empty)
    (on-table b1) (on-table b2) (on-table b3) (on-table b9) (on-table b10)
    (on b4 b8) (on b8 b9)
    (on b5 b13) (on b13 b7) (on b7 b10)
    (on b6 b11) (on b11 b12) (on b12 b4)
    (clear b1) (clear b2) (clear b3) (clear b5) (clear b6)
  )
  (:goal (and
    (on-table b1) (on-table b2) (on-table b3) (on-table b4)
    (on-table b5) (on-table b6) (on-table b7) (on-table b8)
    (on-table b9) (on-table b10) (on-table b11) (on-table b12)
    (on-table b13)
  ))
)