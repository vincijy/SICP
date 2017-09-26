(load "basic-func.scm")

(define (product a b next term)
  (if (> a b)
      1
      (* (term a) (product (next a) b next term))))

;;calculate product of arithmetic sequence
(define (sequence-product a m)
  (define (next a)
    (+ a 2))
  (define (term a)
    a)
  ;;last-term
  (define b
    (+ a (* 2 (- m 1))))
  (product a b next term))

;; to deal with 3 3 5 5 7 7
(define (denominator a n)
  (square (sequence-product a (/ n 2))))

;;to deal with 2 4 4 6 6 8 ..
;; suppose a sequence 2 4 4 6 6 8 8 10, we first calculate the product of 2 2 4 4 6 6 8 8 10 10, then dedive the result by 2 ;;;and 10

(define (numerator a n)
  (define last-term
    (if (oven? n)
	(+ a (* (/ n 2) 2))
	(+ a (* (/ (- n 1) 2) 2))))
  (if (oven? n)
      (/ (square (sequence-product a (+ (/ n 2) 1))) 2 last-term)
      (/ (square (sequence-product a (/ (+ n 1) 2))) 2)))
      

(define (pi-helper x y n)
  (* (/ (numerator x n) (denominator y n)) 4.0))

;; n should be large enough
(pi-helper 2 3 10000)
      
	
	  
    
  
	   
	  






	  



  
  
