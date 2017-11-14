
(load "basic.scm")
(define (square-list items)
  (if (null? items)
      items
      (cons (square (car items)) (square-list (cdr items)))))


(define (square-list items)
  (define (map proc items)
    (if (null? items)
	items
	(cons (proc (car items)) (map proc (cdr items)))))
  (map (lambda (x) ( * x x)) items))
