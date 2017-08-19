

(load "p15-average.scm")
(define (improve guess x)
  (average guess (/ x guess)))