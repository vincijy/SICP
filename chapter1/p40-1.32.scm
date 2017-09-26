
;; recursive
;; (define (accumulate combiner null-value a b term next)
;;   (if (>  a b)
;;       null-value
;;       (combiner (term a) (accumulate combiner null-value (next a) b term next))))


;; iterative
(define (accumulate combiner null-value a b term next)
  (define (iter-helper result)
    (if (> a b)
	result
	(iter-helper (combiner (term (next a)) result))))
  (iter-helper a))


(define (sum a b next term)
  (accumulate + 0  a b term next))

(define (product a b next term)
  (accumulate  * 1  a b term next))

(define (sum-identity a b)
  (define (next a)
    (+ a 1))
  (define (identity a)
    a)
  (sum a b next identity))


(define (product-identity a b)
  (define (next a)
    (+ a 1))
  (define (identity a)
    a)
  (product a b next identity))



(sum-identity 1 3)







  
  
  
  
