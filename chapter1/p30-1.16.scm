
;;; design a fast interative exponentiation process




(define (slow-expt base n)

  (define (expt base n product)
    (if (= n 0)
	product
	(expt base (- n 1) (* base  product))))
  (expt base n 1))

(define (fast-expt base n)
  (define (oven? x) (= (remainder x 2) 0))
  (define (square x) (* x x))
  (define (expt base n product)
    (cond ((= n 0) 1)
	  ((= n 1) product)
	  ((oven? n) (expt base (/ n 2) (* product (square base))))
	  (else (expt base (- n 1) (* base product)))))
  (expt base n 1))


       
