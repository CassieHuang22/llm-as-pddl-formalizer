(define (problem rearrange-blocksworld)
  (:domain blocksworld)
  (:objects A B C D E F G H I J - block)
  (:init
    (ontable J)
    (on I J)
    (on H I)
    (on G H)
    (on F G)
    (on E F)
    (on D E)
    (on C D)
    (on B C)
    (on A B)
    (clear A)
    (empty)
  )
  (:goal (and
    (on B A)
    (on C B)
    (ontable A)
    (clear C)

    (on E D)
    (on F E)
    (on G F)
    (ontable D)
    (clear G)

    (on I H)
    (on J I)
    (ontable H)
    (clear J)
  ))
)