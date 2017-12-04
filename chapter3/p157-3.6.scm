


(define (rand init-num)
  (lambda(op)
    (cond((eq? op 'reset)
	  (lambda(new-value) (begin (set! init-num new-value) init-num)))
	 ((eq? op 'generate)
	  (begin (set! init-num (random init-num)) init-num))
	 (else 'incorrect-order))))


(define new-rand (rand 1000))
