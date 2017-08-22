

(define (fib n)
  (cond ((= n 0) 0)
	((= n 1) 1)
	(else (+ (fib(- n 1)) (fib(- n 2))))))

;;; improve fib 

(define (fib-impr n)
  (define (fib-iter left right n counter)
    (if (>= counter n)
	(+ left right)
	(fib-iter (+ left right) left n (+ counter 1))))
	
  (fib-iter 0 1 n 1))
