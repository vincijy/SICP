

(define (inc m)
  (+ m 1))

(define (dec x)
  (- x 1))

(define (plus_one a b)
	(if (= a 0)
	b
	(inc (plus_one (dec a) b))))

(define (plus_two a b)
  (if (= a 0)
      b
     (plus_two (dec a) (inc b))))
