(define (problem BlocksProblem)
  (:domain BlocksWorld)
  (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - block)
  (:init
    (arm-empty)
    (clear b1) (clear b3) (clear b6) (clear b8) (clear b11)
    (on-table b3) (on-table b6) (on-table b7) (on-table b9) (on-table b12)
    (on b1 b7) (on b2 b4) (on b4 b10) (on b5 b12) (on b8 b5)
    (on b10 b9) (on b11 b2))
  (:goal (and 
    (on-table b1) (on-table b2) (on-table b3) (on-table b4)
    (on-table b5) (on-table b6) (on-table b7) (on-table b8)
    (on-table b9) (on-table b10) (on-table b11) (on-table b12))))