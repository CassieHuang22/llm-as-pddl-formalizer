(define (problem blocksworld-p109)
  (:domain blocksworld)
  (:objects a b c d e f g h i j k l m )
  (:init 
    (on-table a)
    (on b a)
    (on c b)
    (clear c)
    (on-table d)
    (on e d)
    (on f e)
    (on g f)
    (clear g)
    (on-table h)
    (on i h)
    (on j i)
    (on k j)
    (on l k)
    (clear l)
    (on-table m)
    (clear m)
    (arm-empty)
  )
  (:goal (and 
    (on-table a)
    (on b a)
    (on c b)
    (on d c)
    (on e d)
    (on f e)
    (on g f)
    (on h g)
    (on i h)
    (on j i)
    (on k j)
    (on l k)
    (on m l)
  ))
)