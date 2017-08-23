

;;;exponentiation


(define (expt base n)
  (if (= n 1)
      base
     (* base  (expt base (- n 1)))))

(define (square x) (* x x))

(define (oven? x)
  (= (remainder x 2) 0))

(define (fast-expt base n)
  (cond ((= n 1) base)
	((oven? n) (square (fast-expt base (/ n 2))))
	(else (* base (fast-expt base (- n 1))))))
