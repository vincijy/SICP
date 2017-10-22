
(load "basic-func.scm")


;; use a counter i
(define (cont-frac n d k)
  (define (helper i)
    (if (= i k)
	(/ (n k) (d k))
	(/ (n i) (+ (d i) (helper (+ i 1))))))
  (helper 1))

(define (D i)
  (cond ((= i 1) 1)
	((= (remainder (- i 1) 3) 1)  ((lambda (x) (* (+ (quotient (- x 1) 3) 1) 2)) i))
	(else 1)))

(define (e k)
  (+ 2 (cont-frac (lambda (x) 1.000) D k)))


(for-print-func e 20)




  
    


       
       
  
  
