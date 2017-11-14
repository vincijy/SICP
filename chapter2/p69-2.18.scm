


(define (last-pair items)
  (if (null? (cdr items))
      items
      (last-pair (cdr items))))

(define (pop items)
  (if (null? (cdr items))
	     '()
	     (cons (car items) (pop (cdr items)))))


(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))
      
(define (reverse items)
  (define (last-elem items)
    (car (last-pair items)))
  (if (null? (cdr items))
      items
      (cons (last-elem items) (reverse (pop items)))))

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (length-iter items)
  (define (helper items count)
    (if (null? items)
	count
	(helper (cdr items) (+ 1 count))))
  (helper items 0))

 

(define (index items n)
  (if (= n 0)
      (car items)
      (index (cdr items) (- n 1))))

