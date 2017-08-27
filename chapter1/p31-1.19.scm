

(define (fast-fib n )
  (define (oven? x) (= (remainder x 2) 0))
  
  (define (iter-fib left right p q n)
    (cond ((= n 0) right)
	  ((oven? n)
	   (iter-fib (+ (* (+ (* p p) (* 2 p q) (* 2 q q)) left)  (*(+ (* 2 p q) (* q q)) right))
		     (+ (*(+ (* 2 p q) (* q q)) left) (* (+ (* p p) (* q q)) right))
		     p
		     q
		     (/ n 2)))
	   (else (iter-fib (+ left right) left p q  (- n 1)))))
  (iter-fib 1 0 0 1 n))


