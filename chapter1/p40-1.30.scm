

(define (sum a b next term)
  (define (iter a result)
    (if (> a b)
	result
	(iter (next a) (+ (term a) result))))
  (iter a 0))
    

(define (integral-identity a b)
  (define (identity x)
    x)
  (define (next x)
    (+ x 1))
  (sum a b next identity))


(integral-identity 1 100)
        
      

    
