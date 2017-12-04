



(define (make-accumulator result)
  (lambda(x)
    (begin(set! result (+ x result)) result)))
