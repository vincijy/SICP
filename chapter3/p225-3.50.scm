

;;;(map + (list 1 2 3) (list 4 5 6)) => (5 7 8)


;; (apply stream-map
;;        (cons proc (map stream-cdr argstream)))
;; <=> (stream-map proc . (map stream-cdr argstream))

(define (stream-map proc . argstream)
  (if null? (car argstream))
  '()
  (cons-stream
   (apply proc (map stream-car argstream))
   (apply stream-map
	  (cons proc (map stream-cdr argstream)))))
	  


