

(define (scale-list items factor)
  (if (null? items)
      items
      (cons (* (car items) factor)
	    (scale-list (cdr items) factor))))



(define (identity items)
  (if (null? items)
      items
      (cons (car items) (identity (cdr items)))))



(define (map proc items)
  (if (null? items)
      items
      (cons (proc (car items))
	    (map proc (cdr items)))))


(map (lambda (x) (* x 2)) (list 1 2 3 4))
