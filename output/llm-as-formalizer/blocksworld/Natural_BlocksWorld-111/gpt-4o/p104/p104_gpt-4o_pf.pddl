(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects A B C D E F G H I)
  (:init 
    (on C B) (on B A) (ontable A) 
    (ontable D) 
    (ontable E) 
    (on F G) (ontable G)
    (ontable H) 
    (ontable I)
    (clear C) (clear D) (clear E) (clear F) (clear H) (clear I)
    (handempty))
  (:goal (and 
    (on I H) (on H G) (on G F) 
    (on F E) (on E D) (on D C) 
    (on C B) (on B A) (ontable A)
    (clear I))))