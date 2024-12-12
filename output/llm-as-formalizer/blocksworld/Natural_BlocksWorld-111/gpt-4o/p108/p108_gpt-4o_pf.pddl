(define (problem blocksworld-12blocks)
  (:domain blocksworld)
  (:objects A B C D E F G H I J K L - block)
  (:init
    (ontable A) (on B A) (on C B)
    (ontable D) (on E D) (on F E)
    (ontable G) (ontable H)
    (ontable I) (on J I) (on K J) (on L K)
    (clear C) (clear F) (clear G) (clear H) (clear L)
    (handempty)
  )
  (:goal
    (and
      (on L K) (on K J) (on J I) (on I H)
      (on H G) (on G F) (on F E) (on E D)
      (on D C) (on C B) (on B A) (ontable A)
    )
  )
)
