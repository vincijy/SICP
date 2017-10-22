

(load "basic-func.scm")

(define (cont-frac N D k)
  (define (helper i)
    (if (= k i)
	(/ (N i) (D i))
	(/ (N i) (+ (D i) (helper (+ i 1))))))
  (helper 1))


(define (tan-cf x)
  (define (D i)
    (- (* 2 i) 1))
  (define (N i)
    (if  (= i 1)
	 x
	 (- (square x))))
  (cont-frac N D 1000))


