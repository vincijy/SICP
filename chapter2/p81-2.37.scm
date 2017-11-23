




(define (accumulate op init seqs)
  (cond ((null? seqs) init)
	(else (op
	       (car seqs)
	       (accumulate op init (cdr seqs))))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate (lambda(x y)
				  (cond((null? x) 0)
				       (else (op (car x) y))))
			init
			seqs)
				  
	    (accumulate-n op init (map (lambda(x)
					 (cdr x)) seqs)))))

	       
(define (new-map op v m)
  (cond((null? v) '())
       (else (cons (op (car v) (car m)) (map op (cdr v) (cdr m))))))
       


(define (dot-product m v)
  (accumulate + 0 (new-map * v m)))


(define (matrix-*-vector m v)
  (map (lambda(sub-m)
	(dot-product sub-m v )) m))

  


  
  

(define (transpose m)
  (accumulate-n cons '() m))
  
(define (matrix-*-matrix m n)
  (let ((trans-n (transpose n)))
    (map (lambda(sub-m)
	   (map (lambda(sub-trans-n)
		  (dot-product sub-m sub-trans-n))
		trans-n))
	 m)))


(define test-m
  (list (list 1 2 3) (list 4 5 6) (list 7 8 9)))
(define test-v
  (list 1 0 0))
(define test-m2
  (list (list 1 1 1) (list 2 2 2) (list 3 3 3)))

(matrix-*-vector test-m test-v)

(matrix-*-matrix test-m test-m2)



