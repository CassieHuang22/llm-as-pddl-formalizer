(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    Block1 Block2 Block3 Block4 Block5 Block6 Block7 Block8 Block9 Block10 Block11 Block12 Block13 Block14 - block
  )
  (:init
    (ontable Block5)
    (ontable Block12)
    (ontable Block11)
    (ontable Block3)
    (ontable Block7)
    (ontable Block2)
    (ontable Block10)
    (ontable Block4)
    (ontable Block1)
    (on Block6 Block12)
    (on Block9 Block6)
    (on Block13 Block11)
    (on Block14 Block13)
    (on Block8 Block4)
    (clear Block5)
    (clear Block9)
    (clear Block14)
    (clear Block8)
    (clear Block10)
    (clear Block7)
    (clear Block1)
    (clear Block2)
    (armempty)
  )
  (:goal
    (and
      (ontable Block13)
      (ontable Block10)
      (ontable Block11)
      (ontable Block4)
      (ontable Block8)
      (ontable Block12)
      (ontable Block6)
      (ontable Block9)
      (ontable Block1)
      (ontable Block2)
      (ontable Block3)
      (ontable Block5)
      (ontable Block7)
      (on Block14 Block3)
    )
  )
)