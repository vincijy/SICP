(load "basic-func.scm")

(define (time-process process b n m)
  (let ((start (real-time-clock)))
    (process b n m)
    (display "running time: ")
    (display (- (real-time-clock) start) )))

(define (expmod1 b n m)
  (define (fast-expt b n)
    (cond ((= n 0) 1)
	  ((oven? n) (square (fast-expt b (/ n 2))))
	  (else (* b (fast-expt b (- n 1))))))
  
   (remainder (fast-expt b n) m))

(define (expmod2 b n m)
  (cond ((= n 0) 1)
	((oven? n) (remainder (square (expmod b (/ n 2) m)) m))
	(else
	 (remainder (* b (expmod b (- n 1) m)) m))))

 
(time-process expmod2 8 20 7)
  
	  
