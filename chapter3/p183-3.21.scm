(define (insert-quene! quene item)
  (let ((new-pair (cons item '())))
    (cond ((empty-quene? quene)
	   (set-front-ptr! quene new-pair)
	   (set-rear-ptr! quene new-pair)
	   quene)
    (else
     (set-cdr! (rear-ptr quene) new-pair)
     (set-rear-ptr! quene new-pair)
     quene))))

(define (delete-quene! q)
  (cond ((empty-quene? q)
	 (error 'DELETE! call with an empty quene' q))
	 (else
	  (set-front-ptr! q (cdr (front-ptr q)))))
  q)

(define make-quene
  (cons '() '()))


(define (front-ptr q)
  (car q))

(define (rear-ptr q)
  (cdr q))

(define (empty-quene? q)
  (and (null? (front-ptr q)) (null? (rear-ptr q))))

(define (set-front-ptr! quene item)
  (set-car! quene item))

(define (set-rear-ptr! quene item)
  (set-cdr! quene item))

(define q1 make-quene)


(define (print-quene q)
  (display (front-ptr q)))

(insert-quene! q1 'a)


(insert-quene! q1 'b)

(delete-quene! q1)

(delete-quene! q1)

(print-quene q1)
