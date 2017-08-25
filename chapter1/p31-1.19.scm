

(define (fast-fib n )
  (define (iter-fib left right n)
    (cond ((= n 1) left)
	   (else (iter-fib (+ left right) left (- n 1)))))
  (iter-fib 1 0 n))


