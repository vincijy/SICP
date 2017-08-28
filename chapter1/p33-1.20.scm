



(define (gcd dividend divisor)
  (if (= divisor 0)
      dividend
      (gcd divisor (remainder dividend divisor))))

;;;condition of if-sentence will calculate first.

========================================
;;; in the applicative-order evaluation
(gcd 206 40)
     | divisor=40 #f step = 0
     V

(gcd 40 (remainder 206 40))
     | divisor = 6 #f  step+1
     V

(gcd 6 (remainder 40 6))
      | divisor = 4 #f step+1
     V

(gcd 4 (remainder 6 4))
     | divisor = 2  #f step +1
     V

(gcd 2 (remainder 4 2)
     | divisor = 0 #t step +1
     V 
it takes 4 steps only

=====================

in the normal-order evaluation

(gcd 206 40)
     | divisor = 40 #f  step = 0
     V

(gcd 40 (remainder 206 40))
     | t1 = (remainder 206 40) if?  #f  step+1
     V

(gcd t1 (remainder 40 t1))
      | t2 = (remainder 40 t1) if? #f step +2
     V

(gcd t2 (remainder t1 t2))
     | t3 = (remainder t1 t2) if? #f step + 4
     V

(gcd t3 (remiander t2 t3))
     |  t4 = (remainder t2 t3) if? #t step + 7
     V 
     t3
     |
     V
(remainder t1 t2)
     |
     V
(remainder (remainder 206 40) (remainder 40 t1))
     |
     V
(remainder (remainder 206 40) (remaider 40 (remainder 206 40)))
     |
     V
(remainder (remainder 206 40) (remaider 40 6))
     |
     V
(remainder 6 4)
     |
     V
     2 step+4

it takes 21 steps
