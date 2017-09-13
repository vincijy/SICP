

;;; test divisior starting from 2
(define (find-divisor x)
  (divisor-test x 2))


;;; test divisor bigger than 1
;;; if num m is a divisor of x, there must be another divisor x/m
;;; either m or x/ m is less than sqrt of x
;;; Hence if x is not a prime , it must have a divisor less than or equal to sqrt of x.

;;; starting divisor
(define (divisor-test x n)
  (cond ((> (square n) x) x)
	((divide? x n) n)
	(else (divisor-test x (+ n 1)))))

(define (square x)
  (* x x))

(define (divide? x n)
  (= (remainder x n) 0)
  )

;;;;ans: 19999 have a divisor 7
