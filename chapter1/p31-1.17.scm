

(define (double x) (* x 2))
(define (half x) (/ x 2))

(define (slow-multiply a b)
  (if (= a 0)
      0
      (+ b (slow-multiply (- a 1) b))))

(define (fast-multiply a b)
  (cond ((= a 0) 0)
	((oven? a) (double (fast-multiply (half a) b)))
	(else (+ b (fast-multiply (- a 1) b)))))

(define (save-multiply a b)
  (define (iter-multiply a b state-var)
    (if (= a 0)
	state-var
	(iter-multiply (- a 1) b (+ state-var b))))
  (iter-multiply a b 1))

(define (save-fast-multiply a b)
  (define (iter-multiply a b state-var)
    (cond ((= a 0) state-var)
	  ((oven? a) (iter-multiply (half a) b (double state-var)))
	  (else (iter-multiply (- a 1) b  (+ b state-var)))))
	
  (iter-multiply a b 0))

