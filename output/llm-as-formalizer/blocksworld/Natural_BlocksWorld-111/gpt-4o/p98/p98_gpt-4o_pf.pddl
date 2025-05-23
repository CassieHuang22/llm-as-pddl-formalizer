(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects A B C)
  (:init (on A B)
         (ontable B)
         (ontable C)
         (clear A)
         (clear C)
         (arm-free))
  (:goal (and (on A B)
              (on B C)
              (clear A))))