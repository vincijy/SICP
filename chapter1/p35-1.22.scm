
(define (square x)
  (* x x))

(define (divide? n d)
  (= (remainder n d) 0))
;===============

; runtime is a primitive in scheme,
; return a int specified the amout of time systerm has been running

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

;if n is prime report elapsed-time
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display "used time: ")
  (display elapsed-time))

;==============
(define (prime? x)
  (= (find-smallest-divisor x) x))

(define (find-smallest-divisor n)
  (test-divisor n 2)    ;;;starting-divisor
  )

(define (test-divisor n sd)  ;;; sd = starting divisor
  (cond ((> (square sd) n) n)
	 ((divide? n sd)  sd)
	 (else (test-divisor n (+ sd 1)))))


;;;====================
;;;check odd intergrative number in a specific range
;; find prime smaller than n (privous)
;;; input should be odd
(define (search-for-prime n)
  (if (prime? (- n 2))
      (- n 2)
      (search-for-prime (- n 2))))

(search-for-prime 101)
   
