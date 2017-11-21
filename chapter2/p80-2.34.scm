

(define (accumulate op init seqs)
  (cond((null? seqs) init)
       (else(op (car seqs)
		(accumulate op init (cdr seqs))))))
	





(define (horner-eval x coefficent-sqs)
  (accumulate (lambda (this-coeff higher-terms)
		(+ this-coeff
		   (* x higher-terms)))
						 
	      0
	      coefficent-sqs))
