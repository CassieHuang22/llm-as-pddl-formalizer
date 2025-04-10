(define (problem blocks-problem)
  (:domain blocks)
  (:objects
    b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 - block
  )
  
  (:init
    (clear b2) (clear b3) (clear b7) (clear b8) (clear b9)
    (clear b10) (clear b11) (clear b14) (arm-empty)
    (on b1 b5) (on b6 b1) (on b7 b13) (on b8 b12) (on b9 b6) (on b14 b4)
    (on-table b2) (on-table b3) (on-table b4) (on-table b5)
    (on-table b10) (on-table b11) (on-table b12) (on-table b13)
  )
  
  (:goal
    (and
      (on b2 b7) (on b4 b10) (on b6 b13) (on b11 b3)
      (on-table b1) (on-table b3) (on-table b5) (on-table b7)
      (on-table b8) (on-table b9) (on-table b10) (on-table b12)
      (on-table b13) (on-table b14)
    )
  )
)