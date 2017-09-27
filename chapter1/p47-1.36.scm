 
(load "basic-func.scm")

(define (fixed-point f guess)
  (newline)
  (display guess)
  (define (close-enough? a b)
    (< (abs (- a b)) 0.001))
  (if (close-enough? guess (f guess))
      guess
      (fixed-point f (f guess))))


(define (sqrt y)
  (fixed-point (lambda (x) (average x (/ y x))) 1))





(fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 1.2)


;;(fixed-point (lambda (x) (/ (log 1000) (log x))) 1.2) 

