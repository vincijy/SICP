;1.1

(define a 3)
(define b  (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)
(cond (( = a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+2 (if (> b a) b a))
(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
(+ a 1))

;1.2

(/(+ 5 4 (- 2 (- 3 (+ 6 4/5))))
  (* 3 (- 6 2) (- 2 7)))

;1.3
;  剔除掉最小，剩下两个相加
(define (funddd x y z)  (cond ((((<= x y) and (<= x z)) (+ y z))
			       (((<= y x) and (<= y z)) (+ x z))
			       (((<= z x) and (<= z y)) (+ x y))
			       )))
					     