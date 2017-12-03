

(define (element-of-set? x set)
    (cond ((null? set) false)
          ((equal? x (car set)) true)
          (else (element-of-set? x (cdr set)))))


(define (adjoin-set x set)
    (cons x set))

(define (union-set set1 set2)
  (define (helper set1 set2 un-set)
    (cond ((null? set1) un-set)
	  ((element-of-set? (car set1) un-set) (helper (cdr set1) set2 un-set))
	  ((not(element-of-set? (car set1) set2)) (helper (cdr set1) set2 (cons (car set1) un-set)))
	  (else (helper (cdr set1) set2 un-set))))
  (helper set1 set2 set2))
	  

;;;需要检查元素是否已经在交集当中了
(define (intersection-set set1 set2)
  (define (helper set1 set2 intersect-set)
    (cond ((null? set1) intersect-set)
	  ((element-of-set? (car set1) intersect-set) (helper (cdr set1) set2 intersect-set))
	  ((element-of-set? (car set1) set2) (helper (cdr set1) set2 (cons (car set1) intersect-set)))
	  (else (helper (cdr set1) set2 intersect-set))))
  (helper set1 set2 '()))
	
