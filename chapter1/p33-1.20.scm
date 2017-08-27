



(define (gcd dividend divisor)
  (if (= divisor 0)
      dividend
      (gcd divisor (remainder dividend divisor))))

;;;condition of if-sentence will calculate first.

(gcd 206 40)
     | divisor=40 #f
     V

(gcd 40 (remainder 206 40))
     | divisor = 6 #f
     V

(gcd 6 (remainder 40 6))
     | divisor = 4 #f
     V

(gcd 4 (remainder 6 4))
     | divisor = 2  #f
     V

(gcd 2 (remainder 4 2)
     | divisor = 0 #t
     V 
     2


