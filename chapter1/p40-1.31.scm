

(define (product a b next term)
  (if (> a b)
      1
      (* (term a) (product (next a) b next term))))

(define (sequence-product a m)
  (define (next a)
    (+ a 2))
  (define (term a)
    a)
  (define b
    (+ a (* 2 (- m 1))))
  (product a b next term))

(define (denominator a n)
  (square (sequence-product a (/ n 2))))

(define (numerator a n)
  (define b
  (if (oven? n)
      (/ (square (sequence-product a (+ (/ n 2) 1))) 2 b)
      (/ (square (sequence-product a (/ (+ n 1) 2))) 2))
      
				     
	 

  
      
	
	  
    
  
	   
	  






	  



  
  
