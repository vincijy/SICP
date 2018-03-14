

(load "stream.scm")
(define (integers-starting-from n)
  (cons-stream n (integers-starting-from (+ n 1))))



;; (define integers (integers-starting-from 1))

;;test
;;(stream-ref integers 100)

(define (divisible? x y) (= (remainder x y) 0))


(define (sieve stream)
  (cons-stream
   (stream-car stream)
   (sieve (stream-filter
	   (lambda(x)
	     (not (divisible? x (stream-car stream))))	   (stream-cdr stream)))))



;; (define primes (sieve (integers-starting-from 2)))

(define ones (cons-stream 1 ones))

(define (add-stream s1 s2)
  (stream-map + s1 s2))


;; (define (add-stream x y)
;;   (cons-stream (+ (stream-car x) (stream-car y))
;; 	       (add-stream (stream-cdr x) (stream-cdr y))))


(define integers (cons-stream 1 (add-stream ones integers)))


;;test
;;(display-to-index  integers 10)
;; (display-to-index primes 10)


(define fibs
  (cons-stream 1 (cons-stream 2(add-stream fibs (stream-cdr fibs)))))

;; (display-to-index fibs 5)
			      

(define (divisible? n m)
  (= 0 (remainder n m)))


(define (prime? n)
  (define (iter ps)
    (cond ((> (square (stream-car ps)) n) true)
	  ((divisible? n (stream-car ps)) false)
	  (else (iter (stream-cdr ps)))))
  (iter primes))    

(define primes
  (cons-stream 2 (stream-filter prime? (integers-starting-from 3))))



(display-to-index primes 15)


