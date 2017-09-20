



(load "basic-func.scm")

(define (sum-iterm a b next term)
  (if (> a b)
      0
      (+ (term a) (sum-iterm (next a) b next term))))
(define (integral-simp a b func  n)
  (define h
    (/ (- b a) n))
  (define (next x)
    (+ x h))
  (define (term x )
    (define sequence
      (/ (- x a) h))
    (define (factor sequence)
      (cond ((or (= sequence n) (= sequence 0)) 1)
	    ((oven? sequence ) 2)
	    (else 4)))
    (* (factor sequence) (func x)))
 
  (* (/ h 3) (sum-term a b next term)))

