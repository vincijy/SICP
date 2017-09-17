(load "basic-func.scm")

;; 561  1105  1729 2465 2821 6601


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
  (test n 1000))


(define (is-prime? n)
  (define (smallest-divisor n)
    (find-divisor n 2))
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n ) n)
	  ((divided? n  test-divisor) test-divisor)
	  (else (find-divisor n (+ test-divisor 1)))))
  (= (smallest-divisor n) n))

(define (test-fool n)
  (newline)
  (display n)
  (if (and (is-prime? n) (prime? n))
      (display ":is really prime")
      (display ": fool prime")))

(test-fool 11)
(test-fool 1999)
(test-fool 561)
(test-fool 1105)
(test-fool 1729)
(test-fool 2465)
(test-fool 2821)
(test-fool 6601)
  
