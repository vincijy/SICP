



;;lambda is used to create procedure in the same way as define
;; except that no name is specified for the procedure

(define (pi-sum a b)
  (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
       a
       (lambda (x) (+ x 4))
       b))


;; the procedure of the an argument  x that adds x and 4
(lambda (x) (+ x 4))

;;use as operator
((lambda (x y z) (+ x y z)) 1 2 3)



;;use let to create local variable
(define (f x y)
  (define (f-helper a b)
    (+ (* x (square a))
       (* y b)
       (* a b)))
  (f-helper (+ 1 (* x y)) (- 1 y)))


(define (f x y)
  ((lambda (a b)
     (+ (* x (square a))
	(* y b)
	(* a b))))
  (+ 1 (* x y))
  (- 1 y))

(define (f x y)
  (let ((a (+ 1 (* x y)))
	(b (- 1 y)))
    (+ (* x (square a))
       (* y b)
       (* a b))))

;; a let expression is simply syntactic sugar for the uderlying lambda application
;;(let ((positive-arg real-arg)
;;         (positive-arg2 real-arg2))
;;     (do-domething))

    
	
	
  
  

    
       
