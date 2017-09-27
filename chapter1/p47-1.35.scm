
(load "basic-func.scm")

(define (fixed-point f guess)
  (define (close-enough? a b)
    (< (abs (- a b)) 0.001))
  (if (close-enough? guess (f guess))
      guess
      (fixed-point f (f guess))))


(define (sqrt y)
  (fixed-point (lambda (x) (average x (/ y x))) 1))

;; x^2 - x -1 = 0
;; x - 1 = 1/x
;; x = 1/x +1

(fixed-point (lambda (x) (+ (/ 1 x) 1)) 1.2)
