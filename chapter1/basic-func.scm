(define (square x)
  (* x x))
(define (divided? n d)
  (= (remainder n d) 0))
(define (oven? n)
  (= (remainder n 2) 0))

(define (cube x)
  (* x (square x)))

;; (define (time-process process)
;;   (let ((start (real-time-clock)))
;;     (process)
;;     (- (real-time-clock) start)))
 

;; (define (test n)
;;   (cond ((= n 0) 0)
;; 	(else
;; 	 (newline)
;; 	 (display (- n 1)
;; 	 (test (- n 1)))))
 
;; (time-process (test 10000))

	 
    
