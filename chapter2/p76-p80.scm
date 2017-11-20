

(load "basic.scm")

(define (sum-odd-square tree)
  (cond((null? tree) 0)
       ((not (pair? tree))
	(if (odd? tree)
	    (square tree)
	    0))
       
       (else(+ (sum-odd-square (car tree))
	  (sum-odd-square (cdr tree))))))

(sum-odd-square (list 1 2 (list 3)))

(define (even-fibs n)
  (define (next k)
    (let ((f (fib k)))
      (if (> k n)
	  '()
	  (if (even? f)
	      (cons f (next (+ k 1)))
	      (next (+ k 1))))))
  (next 0))

(define (fib n)
  (if (or (= n 0) (= n 1))
      n
      (+ (fib (- n 1)) (fib (- n 2)))))

(define (filter predicate sequence)
  (cond ((null? sequence) '())
	((predicate (car sequence))
	     (cons (car sequence) (filter predicate (cdr sequence))))
	(else (filter predicate (cdr sequence)))))

(filter odd? (list 1 2 3 4 5 6))


(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
	  (accumulate op initial (cdr sequence)))))

(accumulate + 0 (list 1 2 3))


(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low (enumerate-interval (+ low 1) high))))
	 
(define (enumerate-tree tree)
  (cond ((not (pair? tree))
	 (if (null? tree)
	     '()
	     (list tree)))
	(else(append (enumerate-tree (car tree)) (enumerate-tree (cdr tree))))))

(enumerate-tree (list 1 2 3 (list 2 3) 6))
	 
	 
(define (sum-odd-squares tree)
  (accumulate +
	     0
	     (map square
		  (filter odd?
			  (enumerate-tree tree)))))


(define (even-fibs n)
  (accumulate cons
	      '()
	      (filter even?
		      (map fib (enumerate-interval 0 n)))))


(define (list-fib-squares n)
  (accumulate cons
	      '()
	      (map square
		   (map fib (enumerate-interval 0 n)))))
(list-fib-squares 3)
