(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects
    A B C D E F G H I J K L M N - block
  )
  (:init
    (ontable A) (on B A) (clear B)
    (ontable C) (on D C) (clear D)
    (ontable E) (on F E) (clear F)
    (ontable G) (on H G) (clear H)
    (ontable I) (on J I) (clear J)
    (ontable K) (on L K) (clear L)
    (ontable M) (on N M) (clear N)
    (handempty)
  )
  (:goal
    (and
      (on B A) (on C B) (on D C) (on E D) (on F E)
      (on G F) (on H G) (on I H) (on J I) (on K J)
      (on L K) (on M L) (on N M) (clear N) (ontable A)
    )
  )
)