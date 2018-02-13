
(define (make-deque)
  (let ((front-ptr '())
  	(ahead-rear '())
  	(rear-ptr '()))


    (define (front-insert! item)
      (let ((new-pair (list item)))
    	(cond ((empty?)
    	       (set! front-ptr new-pair)
    	       (set! rear-ptr new-pair)
    	       front-ptr)
    	      (else (set! front-ptr (cons item front-ptr))
    		    front-ptr))))
    
    (define (front-delete!)
      (cond ((empty?) (error "quene empty -- FRONT-DELETE"))
    	    (else (set! front-ptr (cdr front-ptr))
    		  (if (null? front-ptr)
    		      (set! rear-ptr '()))
    		  front-ptr)))

    ;; O(n) to delete-rear, not satisfied the book' s requirement
    (define (delete-rear!)
      (define (helper deque)
	(cond ((empty?) (error "empty deque -- AHEAD-REAR"))
	      ((null? (cdr deque)) '())
	      ((null? (cdr (cdr deque))) (list (car deque)))
	      (else (cons (car deque) (helper (cdr deque))))))
      (set! front-ptr (helper front-ptr))
      front-ptr)
      
 	      
    (define (empty?)
      (null? front-ptr))

    (define (dispatch m)
      (cond ((eq? m 'front-insert!) front-insert!)
	    ((eq? m 'front-delete!) front-deleted!)
	    ((eq? m 'delete-rear!) delete-rear!)
	    (else (error "unknown operation -- DISPATCH" m))))
    dispatch))




(define a (make-deque))

((a 'front-insert!) 'k)

((a 'front-insert!) 'a)

((a 'front-insert!) 'b)

((a 'front-insert!) 'f)

((a 'front-insert!) 'm)

((a 'delete-rear!))

