

(load "basic-func.scm")


(define (filter-accumulate combiner null-value a b term next filter?)
  (define (iter-helper a result)
    (if (> a b)
	result
	(if (filter? a)
	    (iter-helper (next a) (combiner (term a) result))
	    (iter-helper (next a) result))))
  (iter-helper a null-value))


(define (sum-oven a b)
  (filter-accumulate + 0 a b identity inc oven?))

(define (sum-square-prime a b)
  (filter-accumulate + 0 a b square inc prime?))

(define (product-pos-rel-prime n)
  (define (relative-prime? a)
    (= (gcd n a) 1))
  (filter-accumulate * 1 1 n identity inc relative-prime?))

;; test
(= (product-pos-rel-prime 7) (* 2 3 4 5 6))

               



	
      

  
