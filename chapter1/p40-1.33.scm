

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

(define (sum-squ-prime a b)
  (filter-accumulate + 0 a b square inc prime?))

(sum-squ-prime 1 5)


	
      

  
