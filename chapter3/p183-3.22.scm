
(define (make-quene)
  (let ((front-ptr '())
	(rear-ptr '()))
    (define (insert-quene! item)
      (let ((new-pair (list item)))
	(cond((empty-quene?)
	      (set! front-ptr new-pair)
	      (set! rear-ptr new-pair)
	      front-ptr)
	     (else (set-cdr! rear-ptr new-pair)
		   (set! rear-ptr new-pair)))))
    
    (define (delete-quene!)
      (cond ((empty-quene?) (error "empty quene -- DELETE-QUENE"))
	    (else (set! front-ptr (cdr front-ptr)))))

    (define (empty-quene?)
      (null? front-ptr))

    (define (display-quene)
      (newline)
      (display front-ptr))
    
    (define (dispatch m)
      (cond ((eq? m 'insert-quene!) insert-quene!)
	    ((eq? m 'delete-quene!) delete-quene!)
	    ((eq? m 'display-quene) display-quene)
	    (else (error "undefined operation --DISPATCH" m))))
    
    dispatch))
    
  
    

(define z (make-quene))

((z 'insert-quene!) 'f)
((z 'insert-quene!) 'a)
((z 'insert-quene!) 'g)
((z 'delete-quene!))
((z 'display-quene))


