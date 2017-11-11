(define (exp b n)
  (define (helper  n product)
    (if (= n 0)
	product
	(helper  (- n 1) (* b product))))
  (helper n 1))
      


(define (cons x y)
  (* (exp 2 x) (exp 3 y)))

(define (cdr z)
  (define (helper z count)
    (if (divided? z 2)
	(helper (/ z 2) (+ count 1))
	count))
  (helper z 0))

(define (car z)
  (define (helper z count)
    (if (divided? z 3)
	(helper (/ z 3) (+ count 1))
	count))
  (helper z 0))

(cdr (cons 5 6))
(car (cons 5 6))
		
	   

