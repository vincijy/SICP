


(define (mystery x)
  (define (loop x y)
    (if (null? x)
	y
	(let ((tmp (cdr x)))
	  (set-cdr! x y)
	  (loop tmp x))))
  (loop x '()))

	


(define v (list 'a 'b 'c 'd))

(define w (mystery v))

w ;;ans:('d 'c 'b 'a)
    
	  
	  
