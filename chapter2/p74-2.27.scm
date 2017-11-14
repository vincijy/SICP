


(define (reverse items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things)  (cons (car things) answer))))
  (iter items '()))


;; ¶ş²æÊ÷ Äæ×ª
(define (deep-reverse tree)
  (cond ((not (pair? tree)) tree)
	(else
	 (let((tree (reverse tree)))
	   (cons (deep-reverse (car  tree))
		 (deep-reverse (cdr tree)))))))




  
(define y
  (list 1 2 3))

(define 2-branch
  (list (list  1 2) (list 2 3)))




(define (tree-reverse lst)
    (define (iter remained-items result)
        (if (null? remained-items)
            result
            (iter (cdr remained-items)
                  (cons (if (pair? (car remained-items))
                            (tree-reverse (car remained-items))
                            (car remained-items))
                        result))))
    (iter lst '()))
