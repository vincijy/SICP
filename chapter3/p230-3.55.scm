

(load "stream.scm")

(define (partial-sums s)
  (cons-stream (stream-car s)
	       (add-stream (stream-cdr s) (partial-sums s))))




(display-to-index (partial-sums integers) 5)




