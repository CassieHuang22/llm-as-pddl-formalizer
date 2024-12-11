(define (problem blocksworld-p111)
  (:domain blocksworld)
  (:objects a b c d e f g h i j k l m n o )
  (:init 
    (on-table a)
    (on b a)
    (on c b)
    (clear c)
    (on-table d)
    (on e d)
    (on f e)
    (clear f)
    (on-table g)
    (clear g)
    (on-table h)
    (clear h)
    (on-table i)
    (clear i)
    (on-table j)
    (clear j)
    (on-table k)
    (clear k)
    (on-table l)
    (clear l)
    (on-table m)
    (clear m)
    (on-table n)
    (clear n)
    (on-table o)
    (clear o)
    (arm-empty)
  )
  (:goal (and 
    (on-table o)
    (on n o)
    (on m n)
    (on l m)
    (on k l)
    (on-table j)
    (on i j)
    (on h i)
    (on-table a)
    (on-table b)
    (on-table c)
    (on-table d)
    (on-table e)
    (on-table f)
    (on-table g)
  ))
)