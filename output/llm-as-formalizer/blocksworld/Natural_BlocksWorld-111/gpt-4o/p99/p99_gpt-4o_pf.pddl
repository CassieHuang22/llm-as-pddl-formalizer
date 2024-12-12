(define (problem blocksworld-problem)
  (:domain blocksworld)
  (:objects red blue green yellow - block)
  (:init 
    (ontable red) (on blue red)
    (ontable green) (on yellow green)
    (clear blue) (clear yellow)
    (handempty)
  )
  (:goal (and 
    (ontable red) 
    (on green red)
    (on yellow green)
    (on blue yellow)
  ))
)