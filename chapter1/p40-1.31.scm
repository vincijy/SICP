

(define (product a b next term)
  (if (> a b)
      1
      (* (term a) (product (next a) b next term))))

(define (factorial a b)
  (define (identity x)
    x)
  (define (inc x)
    (+ x 1))
  (product a b inc identity))


(factorial 1 4)
