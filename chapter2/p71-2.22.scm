

;; 先取出来的 被包裹在里面
;; 倒序
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things)
	      (cons (square (car things))
		    answer))))
  (iter items '()))


;;迭代使得由内而外, 先取出的被放入内层， 结果成了倒序
(define (reverse items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things) (cons (car things) answer))))
  (iter items '()))

;; 两次reverse
(define (identity items)
  (reverse (reverse items)))




