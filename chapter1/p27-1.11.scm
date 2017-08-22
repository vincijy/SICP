

(define (f n)
  (if (< n 3)
      n
       (+ (f (- n 1)) (f (- n 2)) (f (- n 3)))))


;;; improve f

;;; divide the function into two parts,
;;;in the first part function returns  the parameter itself
;;; in the second part(n>=3) , function looks like fib(we can set  
;;; the first term 0 ,second term 1, third term 3)
;;;               f4
;;;               |
;;;              /|\
;;;             / | \
;;;            f3 f2 f1
;;;             |
;;;            /|\
;;;           / | \
;;;          f2 f1 f0
;;;        left mid right






(define (f-impr n)
  
  (define (f-iter n left mid right counter)
    (if (< n 3)
	n
	
        (if (>= counter n)
	    (+ left mid right)
	    (f-iter n (+ left mid right) left mid (+ counter 1)))))
  (f-iter n 2 1 0 3))
           
  
