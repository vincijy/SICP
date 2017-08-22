

(define (A x y)
  (cond((= y 0) 0)
       ((= x 0) (* 2 y))
       ((= y 1) 2)
       (else (A (- x 1) 
		   (A x (- y 1))))))


(define (2*n n) (A 0 n))


(define (2^n n) (A 1 n))

(define (2^^n  n) (A 2 n))

;;;if n=4 ,then A 1 A 1 A 1 A 2 (4-3) => A 1 A 1 A 1 2 ,and we know previously A 1 n   
;;;describes 2^n, so A 2 4 equals to 2^2^2^2
