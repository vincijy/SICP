
(load "basic.scm")
(load "p84-2.40.scm")

(define (queens board-size)
  (define empty-board '())
  (define (queen-cols k)
    (if (= k 0)
	(list empty-board)
	(filter
	 (lambda (positions) (safe? k positions))
	 ;;;;;;; generate a sequece of positions ;;;;
	 (flatmap
	  (lambda (rest-of-queens)
	    (map (lambda (new-row)
		   (adjoin-position new-row k rest-of-queens))
		 (enumerate-interval 1 board-size)))
	  (queen-cols (- k 1))))))
           ;;;;;;;;;;;;;; end ;;;;;;;;;;;;;;;;;;;;;;
  
  (queen-cols board-size))

;; (define (adjoin-position new-row k rest-of-queens)
;;   (map (lambda (x) (append x (list new-row)))
;;        rest-of-queens))



(define (adjoin-position new-row k rest-of-queens)
  (append rest-of-queens (list new-row)))
(define (safe? k positions)
  (define (row-of-k positions)
    (cond ((null? (cdr positions)) (car positions))
	  (else (row-of-k (cdr positions)))))
  (cond ((or (= k 0) (= k 1)) true)
	((same-row? (row-of-k positions) positions) false)
	((same-diagonal? k (row-of-k positions) positions) false)
	(else true)))
  

;;假定已经排好了k-1列， 现在添加一个元素 到第k 列，记其行标记为e
;;判断是否存在除了k列外，还有其他的行标记等于e
(define (same-row? e seq)
  (cond((= (car seq) e)
	(if (null? (cdr seq))
	    false
	    true))
       (else (same-row? e (cdr seq)))))




;;generate a sequence of points according to a sequence, eg: (4 5 6) -> ((1 4) (2 5) (3 6))
(define (xy-point seq)
  (define (helper seq point-x)
    (cond ((null? seq) '())
	  (else (cons (list point-x (car seq))
		      (helper (cdr seq) (+ point-x 1))))))
  (helper seq 1))




;;假定已经排好了k-1列， 现在添加一个元素 到第k 列，记其行标记为e
;;判断最后一个皇后与其他的皇后是否在同一条对角线上
;;假定已经排除了同一行同一列的可能，不用再处理除数为0的情况
;;k column
(define (same-diagonal? k e positions)
  (define (point-same-diagonal? point-a point-b)
    (if (= (- (cadr point-a) (cadr point-b)) 0)
	true
	(= 1 (abs (/ (- (car point-a) (car point-b))
		 (- (cadr point-a) (cadr point-b)))))))
  (define (same? point-a point-b)
    (and (= (car point-a) (car point-b))
	 (= (cadr point-a) (cadr point-b))))
  (define (helper k e seq)
    (cond ((same? (list k e) (car seq)) false)
	  (else
	   (if (point-same-diagonal? (list k e) (car seq))
	       true
	       (helper k e (cdr seq))))))
  (helper k e (xy-point positions)))

(queens 4)


 
  
  
  
  
  
  
	
  
	
	 
  
  
