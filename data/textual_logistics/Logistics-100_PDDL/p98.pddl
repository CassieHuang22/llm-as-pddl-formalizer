(define (problem strips-log-y-4)
   (:domain logistics)
   (:objects package6 package5 package4 package3 package2 package1
             city5 city4 city3 city2 city1 truck14 truck13 truck12 truck11
             truck10 truck9 truck8 truck7 truck6 truck5 truck4 truck3 truck2
             truck1 plane2 plane1 city5-2 city5-1 city4-2 city4-1 city3-2
             city3-1 city2-2 city2-1 city1-2 city1-1 city5-3 city4-3
             city3-3 city2-3 city1-3)
   (:init (package package6)
          (package package5)
          (package package4)
          (package package3)
          (package package2)
          (package package1)
          (city city5)
          (city city4)
          (city city3)
          (city city2)
          (city city1)
          (truck truck14)
          (truck truck13)
          (truck truck12)
          (truck truck11)
          (truck truck10)
          (truck truck9)
          (truck truck8)
          (truck truck7)
          (truck truck6)
          (truck truck5)
          (truck truck4)
          (truck truck3)
          (truck truck2)
          (truck truck1)
          (airplane plane2)
          (airplane plane1)
          (location city5-2)
          (location city5-1)
          (location city4-2)
          (location city4-1)
          (location city3-2)
          (location city3-1)
          (location city2-2)
          (location city2-1)
          (location city1-2)
          (location city1-1)
          (airport city5-3)
          (location city5-3)
          (airport city4-3)
          (location city4-3)
          (airport city3-3)
          (location city3-3)
          (airport city2-3)
          (location city2-3)
          (airport city1-3)
          (location city1-3)
          (in-city city5-3 city5)
          (in-city city5-2 city5)
          (in-city city5-1 city5)
          (in-city city4-3 city4)
          (in-city city4-2 city4)
          (in-city city4-1 city4)
          (in-city city3-3 city3)
          (in-city city3-2 city3)
          (in-city city3-1 city3)
          (in-city city2-3 city2)
          (in-city city2-2 city2)
          (in-city city2-1 city2)
          (in-city city1-3 city1)
          (in-city city1-2 city1)
          (in-city city1-1 city1)
          (at plane2 city3-3)
          (at plane1 city5-3)
          (at truck14 city5-1)
          (at truck13 city4-1)
          (at truck12 city3-2)
          (at truck11 city2-2)
          (at truck10 city1-2)
          (at truck9 city3-1)
          (at truck8 city3-1)
          (at truck7 city1-3)
          (at truck6 city5-1)
          (at truck5 city4-1)
          (at truck4 city1-1)
          (at truck3 city1-2)
          (at truck2 city3-1)
          (at truck1 city2-1)
          (at package6 city4-2)
          (at package5 city4-3)
          (at package4 city1-1)
          (at package3 city3-2)
          (at package2 city5-1)
          (at package1 city4-1))
   (:goal (and (at package6 city1-3)
               (at package5 city5-2)
               (at package4 city3-1)
               (at package3 city4-2)
               (at package2 city2-3)
               (at package1 city2-2))))