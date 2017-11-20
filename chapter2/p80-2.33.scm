


(define (accumulate operation initial seqs)
  (cond ((null? seqs) initial)
	(else
	 (operation
	  (car seqs)
	  (accumulate operation initial (cdr seqs))))))
	 


(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x)  y))
	      '()
	      sequence))

(define (append seq1 seq2)
  (accumulate cons
	      seq2
	      seq1))
			     


;; (define (append sq1 sq2)
;;   (cond ((null? sq1) sq2)
;; 	(else
;; 	 (cons (car sq1) (append (cdr sq1) sq2)))))


;;;当 (cdr sq = null) , 即最后一个递归函数 返回说明递归到了(x, null)含有一个元素
(define (length sequence)
  (accumulate (lambda(x y)
		(cond((null? y) 1)
		     (else(+ 1 y))))
	      0
	      sequence))

(append (list 1 2 3) (list 5 6))


