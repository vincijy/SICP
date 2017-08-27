

(define (gcd dividend divisor)
  (if (= divisor 0)
      dividend
      (gcd divisor (remainder dividend divisor))))
