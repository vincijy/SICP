


(load "basic-func.scm")

(define (time-process process n)
  (let ((start (real-time-clock)))
    (process n)
    (newline)
    (display "running time: ")
    (display (- (real-time-clock) start) )))

(define (test n)
  (cond ((= n 1) 1)
	(else
	 (test (- n 1)))))

(define (square-test n)
  (square (test n)))

(define (square-test-2 n)
  (* (test n) (test n)))

(time-process square-test 10000)
(time-process square-test-2 10000)
(time-process square-test 100000)
(time-process square-test-2 100000)
(time-process square-test 1000000)
(time-process square-test-2 1000000)
;; by running the above,we can see that square-test-2 consuming double time of square-test

;; 1st
;; n  -> (n/2 + n/2) -> (n/2/2 + n/2/2) + (n/2/2 + n/2/2)
;;in every recurse, the argument was halfed but the number of arguments needed to be calculated was doubled
 ;; (remainder (* (expmod base (/ exp 2) m)
;; 	      (expmod base (/ exp 2) m))
;; 	   m)

;; 2nd
;;2^step=n    => log n
;;n -> n/2 -> n/2/2 -> n/2/2/2
;;in every recurse, the argument was halfed
;;(remainder (square (expmod base (/ exp 2) m)) m)

;; while exp is oven , the 2nd reduce running time to the half, but when recaculate the argument, time double
;; 


