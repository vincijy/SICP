
(load "stream.scm")

(define (expand num den radix)
  (cons-stream
   (quotient (* num radix ) den)
   (expand (remainder (* num radix) den) den radix)))

(display-to-index (expand 1 7 10) 20)

;;den and radix not changes , num - > num = remainder((*num radeix) den)

;; (expand 1 7 10) >> 1*10 / 7 = 1

;; (expand 3 7 10) >> 3*10 / 7 = 4

;; (expand 2 7 10) >> 2*10 / 7 = 2

;; (expand 6 7 10) >> 6*10 / 7  = 8
