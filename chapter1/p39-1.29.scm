



(load "basic-func.scm")


(define (sum-term a b next term)
  (if (> a b)
      0
      ( + a  (sum-term (next a) b next term))))

(define (integral-simpu a b func  n)
  (define h
    (/ (- b a) n))
  (define (next x)
    (+ x h))
  (define (factor m)
    (cond ((or (= m n) (= m 0)) 1)
 	  ((oven? m) 2)
	  (else 4)))
  (define (term m x)
    (* (factor m) (func x)))

  (* (/ h 3) (sum-term a b next term)))
c
