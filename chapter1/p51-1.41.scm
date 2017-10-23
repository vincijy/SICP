



(define (double g)
  (lambda (x) (g (g x))))

(define inc (lambda (x) (+ x 1)))

;; plus 2
;;((double inc) 5)

;; plus 
;;(((double double) inc) 5)
;;(((double (double double)) inc) 5)
