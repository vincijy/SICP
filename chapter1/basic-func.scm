(define (square x)
  (* x x))
(define (divided? n d)
  (= (remainder n d) 0))
(define (oven? n)
  (= (remainder n 2) 0))

(define (cube x)
  (* x (square x)))

(define (inc x)
  (+ x 1))

(define (identity x)
  x)


(define (prime? x)

  (define (find-divisor x)
    (divisor-test x 2))

  (define (divisor-test x n)
    (cond ((> (square n) x) x)
	  ((divided? x n) n)
	  (else (divisor-test x (+ n 1)))))
  (if (= x 1)
      false
      (= x (find-divisor x))))


(define (gcd x y)
  (if (= y 0)
      x
      (gcd y (remainder x y))))

(define (positive? x)
  (> x 0))
(define (negative? x)
  (< x 0))
(define (average x y)
  (/ (+ x y) 2))
   



	 
    
