

; runtime is a primitive in scheme,
; return a int specified the amout of time systerm has been running

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display "used time: ")
  (display elapsed-time))

(define (prime? x)
  (= (find-smallest-divisor x) x))

(define (find-smallest-divisor n)
  (test-divisor n 2)    ;;;starting-divisor
  )

(define (test-divisor n sd)  ;;; sd = starting divisor
  (cond ((> (square sd) n) n)
	 ((divide? n sd)  sd)
	 (else (test-divisor n (+ sd 1)))))

(define (square x)
  (* x x))

(define (divide? n d)
  (= (remainder n d) 0))

(define (search-for-prime end)
  (if (> end 2)
      ((timed-prime-test end)
       (search-for-prime (- end 1)))
      ))
      

(search-for-prime 100)
