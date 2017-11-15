
(define (identity x)
  (cond ((not (pair? x)) x)
	(else (cons (identity (car x)) (identity (cdr x))))))



;;append 作用 可以 让两个list融合
(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(define (fringe tree)
  (cond ((not (pair? tree))
	 (if (null? tree)
	     '()
	     (list tree)))
	(else (append (fringe (car tree)) (fringe (cdr tree))))))

(fringe (list 1 2 3(list 4 5) (list 5 6) 6))
			      
	 


