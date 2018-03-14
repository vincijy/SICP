


(define sum 0)

(define (accum x)
  (set! sum (+ x sum))
  sum)


(define seq (stream-map accum (stream-enumerate-interval 1 10)))

(define y (stream-filter even? seq))

(define z (stream-filter (lambda (x) (= (remainder x 5) 0)) seq))

(stream-ref y 3)

(display-stream z)










