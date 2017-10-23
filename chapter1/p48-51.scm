

(load "basic-func.scm")

(define (average-dump f)
  (lambda (x) (average x (f x))))

(define (derive g)
  (define dx 0.0001)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))
;;a procedure of which fixed point is the root of function g(x)=0
(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((derive g) x)))))

;;find by fixed-point searching
(define (newton-method g guess)
  (fixed-point-iner (newton-transform g) guess))

;; x^2 = value => value - x^2 = 0
(define (sqrt value)
  (newton-method (lambda (x) (- value (square x))) 1.00))








