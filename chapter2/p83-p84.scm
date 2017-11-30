

(load "basic.scm")
(define (accumulate op init seqs)
  (cond ((null? seqs) init)
	(else (op (car seqs)
		  (accumulate op init (cdr seqs))))))

(define (enumerate-interval m n)
  (if (> m n)
      '()
      (cons m (enumerate-interval (+ m 1) n))))



;;try this:

;; (accumulate append
;; 	    '()
;; 	    (map (lambda (i)
;; 		   (map (lambda (j) (list i j))
;; 			(enumerate-interval 1 (- i 1))))
;; 		 (enumerate-interval 1 n)))

;;(enumerate-interval 2 8)
			  
(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(flatmap (lambda(i) (list i i)) (list 2 3 3))

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (prime-sum-pair n)
  (map make-pair-sum
       (filter prime-sum?
	       (flatmap
		(lambda(i)
		  (map (lambda (j) (list i j))
		       (enumerate-interval 1 (- i 1))))
		(enumerate-interval 1 n)))))

(prime-sum-pair 6)



