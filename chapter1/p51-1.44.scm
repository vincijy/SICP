

(load "basic-func.scm")



(define (smooth f)
  (define dx 0.001)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (repeated f n)
  (define (helper i x)
    (if (= i n)
	(f x)
	(f (helper (+ i 1) x))))
  (lambda (x) (helper 1 x)))


(define (smooth-repeated f n)
  (repeated (smooth f) n))

    
  
