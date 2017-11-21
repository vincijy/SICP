

(define (accumulate op init seqs)
  (cond ((null? seqs) init)
	(else (op (car seqs)
		  (accumulate op init (cdr seqs))))))


(define (count-leaves tree)
  (accumulate + 0 (map (lambda(subtree)
			 (cond ((not (pair? subtree)) 1)
			       (else (count-leaves subtree))))
		       tree)))


;;another method
(define (count-leaves tree)
  (define (fringe tree)
    (cond ((not (pair? tree))
		(if (null? tree)
		    '()
		    (list tree)))
	  (else (append (fringe (car tree)) (fringe (cdr tree))))))
  (accumulate (lambda (x y)
		(cond((null? y) 1)
		     (else (+ 1 y))))
		     
	      0
	      (fringe tree)))


