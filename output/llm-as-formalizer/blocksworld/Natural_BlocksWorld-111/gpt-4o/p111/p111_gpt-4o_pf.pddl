(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects A B C D E F G H I J K L M N O - block)
  (:init
    (ontable A) (on B A) (on C B) (clear C)
    (ontable D) (on E D) (on F E) (clear F)
    (ontable G) (clear G)
    (ontable H) (clear H)
    (ontable I) (clear I)
    (ontable J) (clear J)
    (ontable K) (clear K)
    (ontable L) (clear L)
    (ontable M) (clear M)
    (ontable N) (clear N)
    (ontable O) (clear O)
    (handempty)
  )
  (:goal (and
    (on K L) (on L M) (on M N) (on N O) (ontable O)
    (on H I) (on I J) (ontable J)
    (ontable A) (clear A)
    (ontable B) (clear B)
    (ontable C) (clear C)
    (ontable D) (clear D)
    (ontable E) (clear E)
    (ontable F) (clear F)
    (ontable G) (clear G)
  )))