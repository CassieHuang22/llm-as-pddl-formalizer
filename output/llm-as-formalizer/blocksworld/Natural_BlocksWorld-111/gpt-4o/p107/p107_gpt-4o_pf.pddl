(define (problem blocksworld-problem)
  (:domain blocksworld)

  (:objects
    A B C D E F G H I J K - block
  )

  (:init
    (ontable A)
    (on B A)
    (on C B)
    (ontable D)
    (on E D)
    (ontable F)
    (ontable G)
    (on H G)
    (on I H)
    (on J I)
    (on K J)
    (clear C)
    (clear E)
    (clear F)
    (clear K)
    (arm-empty)
  )

  (:goal
    (and
      (ontable A)
      (on B A)
      (on C B)
      (ontable D)
      (on E D)
      (ontable F)
      (on G F)
      (on H G)
      (on I H)
      (on J I)
      (on K J)
      (clear C)
      (clear E)
      (clear K)
    )
  ))
