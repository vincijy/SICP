


(define (for-each proc items)
  (cond ((null? (cdr items))  (proc (car items)))
	(else
	 (proc (car items))
	 (for-each proc (cdr items)))))
      


(for-each (lambda (x) (newline) (display x)) (list 5 6 3 5 6))
