
;; 第一个层次上的操作

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))


(define x (cons (list 1 2 4  5 6 6) (list 3  6 4)))
(define y (cons x (list 1 2)))

(length x)


;;  一个语句专门处理 左分支 另一个语句专门处理 右分支
;; (define (count-leaves items)
;;   (if (null? items)
;;       0
;;       (+ (if (pair? items)
;; 	     (count-leaves (car items))
;; 	     1)
;; 	 (if (pair? items)
;; 	     (count-leaves (cdr items))
;; 	     0))))

;;更加简洁的写法
;;过滤与计数放前

(define (count-leaves x)
  (cond ((null? x) 0)
	((not (pair? x)) 1)
	(else
	 (+ (count-leaves (car x))
	    (count-leaves (cdr x))))))
;;test
(count-leaves y)



;; 用这种方法 构造自身
(define (identity items)
  (cond ((not (pair? items))  items)
	(else (cons (identity (car items))
	      (identity (cdr items))))))
	      
	 
(identity y)
	 
