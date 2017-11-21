


(define (accumulate op init seqs)
  (cond ((null? seqs) init)
	(else (op
	       (car seqs)
	       (accumulate op init (cdr seqs))))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate (lambda(x y)
				  (cond((null? x) 0)
				       (else (op (car x) y))))
			init
			seqs)
				  
	    (accumulate-n op init (map (lambda(x)
					 (cdr x)) seqs)))))

(accumulate-n + 0 (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
			
