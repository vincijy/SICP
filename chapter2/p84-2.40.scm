

(load "basic.scm")
(define (accumulate op init seqs)
  (cond ((null? seqs) init)
	(else (op (car seqs)
		  (accumulate op init (cdr seqs))))))

(define (enumerate-interval m n)
  (if (> m n)
      '()
      (cons m (enumerate-interval (+ m 1) n))))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))


(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))


(define (unique-pairs n)
  (flatmap (lambda (i)
	     (map (lambda (j) (list i j))
		   (enumerate-interval 1 (- i 1))))
	     (enumerate-interval 1 n)))
	   

(define (prime-sum-pair n)
  (map make-pair-sum
       (filter prime-sum?
	       (unique-pairs n))))

(prime-sum-pair 5)
  
  
