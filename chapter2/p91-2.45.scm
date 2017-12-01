

(define (split proc-big proc-sm n)
  (lambda(painter)
    (if (= n 0)
	painter
	(let ((smaller (split proc-big proc-sm (- n 1))))
	  (proc-big painter (proc-sm smaller smaller))))))
