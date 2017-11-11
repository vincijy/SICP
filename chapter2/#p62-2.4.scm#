
;;m , a procedure to pick out x or y
(define (cons  x y)
  (lambda (m) (m x y)))

-(define (car z)
  (z (lambda (p q) p)))


(define (cdr z)
  (z (lambda (p q) q)))

(car (cons 1 2))
  
