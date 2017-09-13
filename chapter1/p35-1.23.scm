
(define (square x)
  (* x x))

(define (divide? x n)
  (= (remainder x n) 0)
  )



;;; if 2 is checked ,no point to check other enven numbers.
(define (next input)
  (if (= input 2)
      3
      (+ input 2)))


;;; test divisior starting from 2
(define (find-smallest-divisor x)
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

;;; test only odd nums
(define (divisor-test x test)
  (cond ((>(square test) x) x)
	((divide? x test) test)
	(else (divisor-test x (next test)))))

(find-smallest-divisor 1999)
(find-smallest-divisor 19999)
