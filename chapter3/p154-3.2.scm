

(define (make-monitored f)
  (define (helper counts)
    (lambda(x)
      (cond((eq?  x 'how-many-calls?) counts)
	   ((eq?  x 'reset) (begin (set! counts 0) counts))
	   ((number? x)  (begin (set! counts (+ counts 1))
				(f x)))
	   (else (error "input not the correct oder--" x)))))
  (helper 0))

(define monitor (make-monitored (lambda (x) (* x x))))


  
  
	 
