
(load "p84-2.40.scm")

;;;generate pairs
;;;filter by sum
;;;permutation

(define (permutations s)
  (if (null? s)
      (list nil)
      (flatmap (lambda(x)
		 (map (lambda (p) (cons x p))
		      (permutations (remove x s))))
	       s)))


(define (remove item seq)
  (filter (lambda (x) (not (= x item)))
	  seq))


(permutations (list 1 2 3))

(define (tri-pairs n)
  (define (double-pairs n)
    (flatmap (lambda(i) (map (lambda(j)
			       (list j i)) (enumerate-interval 1 (- i 1))))
	     (enumerate-interval 1 n)))
  (flatmap (lambda(i) (map (lambda (j)
			     (cons j i)) (enumerate-interval 1 (- (car i) 1))))
	   (double-pairs n)))

(define (sum? seq sum)
  (= sum (accumulate + 0 seq)))

(define (same-sum-pairs seq sum)
  (filter (lambda(subseq) (sum?  subseq  sum)) seq))

(define (wanted-pairs n s)
  (define (helper s)
    (cond((null? s) '())
	 (else (append (permutations (car s))
		       (helper (cdr s))))))
  (helper (same-sum-pairs (tri-pairs n) s)))

(same-sum-pairs (tri-pairs 8) 12)

(wanted-pairs 3 6)

