


(define (make-mobile left right)
  (list (left right)))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cdr mobile))

(define (branch-lenght branch)
  (car branch))

(define (branch-structure branch)
  (cdr branch))


(define (total-weight mobile)
  (define (new-pair? x)
    (pair? (car x)))
  (cond ((not (new-pair? mobile))
	 (if (null? mobile)
	     0
	     (branch-structure mobile)))
	(else
	 (+
	  (total-weight (left-branch mobile))
	  (total-weight (right-branch mobile))))))
	
  
(define a-mobile
  



	     
