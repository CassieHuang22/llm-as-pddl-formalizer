(define (problem blocks-problem)
  (:domain blocks-world)
  (:objects 
    B1 B2 B3 B4 B5 B6 B7 B8 B9 B10 B11 B12 B13 B14 - block
  )

  (:init
    (clear B2) (clear B3) (clear B6) (clear B7) (clear B9) (clear B11) (clear B12)
    (arm-empty)
    (on B1 B5) (on B2 B1) (on B6 B8) (on B8 B10) (on B10 B4) (on B11 B14) (on B12 B13)
    (on-table B3) (on-table B4) (on-table B5) (on-table B7) (on-table B9)
    (on-table B13) (on-table B14)
  )

  (:goal
    (and
      (on B1 B9) (on B2 B5) (on B8 B6) (on B9 B14) (on B10 B3) 
      (on B11 B1) (on B12 B2) (on B13 B7) (on B14 B12)
      (on-table B3) (on-table B4) (on-table B5) (on-table B6) (on-table B7)
    )
  )
)
