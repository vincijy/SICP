

(load "stream.scm")

(define (add-streams s1 s2)
  (stream-map + s1 s2))

(define s (cons-stream 1 (add-streams s s)))


;;ans : 1 2 4 8 16 ..

;;check

(display-to-index s 4)


