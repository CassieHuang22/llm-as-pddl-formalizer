(define (problem blocksworld-rearrange)
  (:domain blocksworld)
  (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 - block)
  (:init
    (ontable b1) (ontable b2) (ontable b3) (ontable b4) (ontable b5) (ontable b6)
    (ontable b7) (ontable b8) (ontable b9) (ontable b10) (ontable b11)
    (ontable b12) (ontable b13) (ontable b14)
    (clear b1) (clear b2) (clear b3) (clear b4) (clear b5) (clear b6)
    (clear b7) (clear b8) (clear b9) (clear b10) (clear b11)
    (clear b12) (clear b13) (clear b14)
    (armempty)
  )
  (:goal
    (and
      (on b1 b9) (ontable b8) (ontable b9)
      (ontable b2) (on b11 b2) (on b12 b11) (on b13 b12) (on b3 b13)
      (ontable b7) (on b4 b7)
      (ontable b6) (on b14 b6)
      (ontable b5) (on b10 b5))))