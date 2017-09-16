

(define (square x)
  (* x x))

(define (divide? n d)
  (= (remainder n d) 0))

(define (oven? n)
  (= (remainder n 2) 0))
;===============

; runtime is a primitive in scheme,return a intergal specified the amout of time systerm has been running


;; return running time of testing if a num is prime
(define (timed-prime-test n)
  (newline)
  (display n)
  (let ((start-time (real-time-clock)))
    (start-prime-test n start-time)))
  
(define (start-prime-test n start-time)
  (if (prime? n)
      (let ((end-time (real-time-clock)))
	(report-prime (- end-time start-time)))))


(define (report-prime elapsed-time)
  (display "is prime, used time: ")
  (display elapsed-time))
 

;; ;==============
;; (define (prime? x)
;;   (= (find-smallest-divisor x) x))

;; (define (find-smallest-divisor n)
;;    (test-divisor n 2))

;; (define (test-divisor n sd)  ;;; sd = starting divisor
;;   (cond ((> (square sd) n) n)
;; 	 ((divide? n sd)  sd)
;; 	 (else (test-divisor n (+ sd 1)))))

;;=======================
;;;use fermat-test to find divisor
;;if n is prime,choose a num a less than n
;;then (reamainder a^n n)=(remaider a n)=a
 
(define (prime? n)
  (define (test n times)
    (cond ((= times 0) true)
	  ((pass-fermat-test? n (random-num n)) (test n (- times 1)))
	  (else false)))
    
  (define (pass-fermat-test? n a)
    (= (expmod a n n) a))
  (define (random-num n)
    (+ (random (- n 1)) 1))
  (define (expmod b n m)
    (cond ((= n 0) 1)
	  ((oven? n) (remainder (square (expmod b (/ n 2) m)) m))
	  (else
	   (remainder (* b (expmod b (- n 1) m)) m))))
  (test n 10))
  
	
    
      
;;==========================
(define (search-for-prime n count)
  (cond((= count 0)
      (newline)
      (display "EOF"))
      (else
       (cond ((prime? n)
	   (timed-prime-test n)
	   (search-for-prime (- n 1) (- count 1)))
	   (else
	    (search-for-prime (- n 1) count))))))
	 
;; testing-examples				  
;; (search-for-prime 100000 3)
;; (search-for-prime 1000000 3)
;; (search-for-prime 10000000 3)
;; (search-for-prime 100000000 3)
;; (search-for-prime 1000000000 3)
(search-for-prime 10000000000 4)
(search-for-prime 100000000000 4)
(search-for-prime 1000000000000 4)
(search-for-prime 10000000000000 4)
(search-for-prime 100000000000000 4)

;;=========================
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
;; ;;test
;; ;;(search-for-all-prime 20)

;; (define (search-for-odd-prime n)
;;   (define (odd? n)
;;     (= (remainder n 2) 1))
;;   (define (odd-prime n count)
;;     (if (odd? n)	
;; 	(cond ((= count 1)
;; 	       (display "that is all"))
;; 	      ((prime? n)
;; 	       (display n)
;; 	       (newline)
;; 	       (odd-prime (- n 2) (- count 2)))
;; 	      (else
;; 	       (odd-prime (- n 2) (- count 2))))
;; 	(odd-prime (- n 1) (- count 1))))
  
;;   (odd-prime n n))

;; ;; test
;; ;; (search-for-odd-prime 20)


;; ;; (timed-prime-test 1789522)
;; ;; (timed-prime-test 1999)
;; ;; (timed-prime-test 19999999999)

;; (define (test-foo)
;;     (let ((start-time (real-time-clock)))
;;         (search-for-all-prime 100)
;;         (- (real-time-clock) start-time)))
;; (test-foo)
