
(load "stream.scm")
;;;(map + (list 1 2 3) (list 4 5 6)) => (5 7 8)



(define (stream-map proc . argstream)
  (if (null? (car argstream))
  '()
  (cons-stream
   (apply proc (map stream-car argstream))
   (apply stream-map
	  (cons proc (map stream-cdr argstream))))))


;; test
(define add (lambda(x y) (+ x y)))

(define s1 (stream-enumerate-interval 1 10))
(define s2 (stream-enumerate-interval 11 20))

(display-stream (stream-map add s1 s2))

