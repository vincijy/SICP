

(load "basic-func.scm")

(define (newton-method g guess)
  (define (newton-transfer g)
    (lambda (x) (- x (/ (g x) ((derive g) x)))))
  (fixed-point-iner (newton-transfer g) guess))


(define (cubic a b c)
  (lambda (x) (+ (cube x) (* a (square x)) (* b x) c)))

(define (cubic-root a b c)
  (newton-method (cubic a b c) 1.0))

(cubic-root 0 0 -27)
