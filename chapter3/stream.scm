

(define (stream-enumerate-interval low high)
  (if(> low high)
     the-empty-stream
     (cons-stream low
		  (stream-enumerate-interval (+ low 1) high))))


(define (display-line x)
  (newline)
  (display x))

(define (display-stream stream)
  (stream-for-each display-line stream))



;; (display-stream (stream-enumerate-interval 1 10))
