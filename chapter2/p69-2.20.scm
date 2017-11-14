
(load "basic.scm")

(define (same-parity . x)
  (define (helper x)
    (cond ((null? x) x)
	  ((oven? (car x))  (cons (car x) (helper (cdr x))))
	  (else (helper (cdr x)))))
  (helper x))






