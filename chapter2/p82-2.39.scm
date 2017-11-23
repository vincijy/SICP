



(define (fold-left op init seqs)
  (define (iter result rest)
    (if (null? rest)
	result
	(iter (op result (car rest)) (cdr rest))))
  (iter init seqs))

(define (fold-right op init seqs)
  (cond ((null? seqs) init)
	(else (op (car seqs)
		  (fold-right op init (cdr seqs))))))


(define nil '())

(define (reverse-r seqs)
  (fold-right (lambda(item  rest)
		(append rest (list item)))
   nil seqs))


(define (reverse-l seqs)
  (fold-left (lambda(x y)
	       (cons  y  x))
	     nil seqs))

(reverse-l (list 1 2 3 4 5 6))
	     
	       
	       
