

;;ans:
(define (func inner)
  (lambda (x) (begin (set! inner (* inner x)) inner)))

(define f
  (func 1))

;;test

(+ (f 0) (f  1))
;; (+ (f 1) (f 0))






	   


  
