
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
;; find prime smaller than n (previous)
;;; input should be odd
;; (define (search-for-prime n)
;;   (if (prime? (- n 2))
;;        (- n 2)
;;       (search-for-prime (- n 2))))

;; (search-for-prime 101)


(define (search-for-prime n count)
  (cond ((= count 0)
	 (display "are primes"))
	 ((prime? n)
	  (display n)
	  (newline)
	  (search-for-prime (- n 1) (- count 1)))
	 (else
	  (search-for-prime (- n 1) count))))
	 
;; (search-for-prime 101 10)


(define (search-for-all-prime n )
  (define (search-prime n count)
    (cond ((= count 0)
	  (display "that is all"))
	  ((prime? n)
	   (display n)
	   (newline)
	   (search-prime (- n 1) (- count 1)))
	  (else (search-prime (- n 1) (- count 1)))))
  (search-prime n (- n 1)))
;;test
;;(search-for-all-prime 20)

(define (search-for-odd-prime n)
  (define (odd? n)
    (= (remainder n 2) 1))
  (define (odd-prime n count)
    (if (odd? n)	
	(cond ((= count 1)
	       (display "that is all"))
	      ((prime? n)
	       (display n)
	       (newline)
	       (odd-prime (- n 2) (- count 2)))
	      (else
	       (odd-prime (- n 2) (- count 2))))
	(odd-prime (- n 1) (- count 1))))
  
  (odd-prime n n))

;; test
;; (search-for-odd-prime 20)


