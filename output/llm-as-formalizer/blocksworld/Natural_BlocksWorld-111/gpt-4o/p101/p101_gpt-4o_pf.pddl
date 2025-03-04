(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects A B C D E F)
  (:init
    (ontable A) (clear A)
    (on B C) (clear B)
    (ontable C)
    (ontable D)
    (on E D) (clear E)
    (ontable F) (clear F)
    (armempty)
  )
  (:goal
    (and
      (on A B)
      (on B C)
      (ontable C)
      (ontable D)
      (on E F)
      (ontable F)
    )
  )
)