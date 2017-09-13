

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n ) n)
	((divided? n  test-divisor) test-divisor)
	(else (find-divisor n (+ test-divisor 1)))))

(define (divided? a b)
  (= (remainder a b) 0))

(define (square x) (* x x))
  
