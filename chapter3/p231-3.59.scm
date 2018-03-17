



;;a 
(define (stream-div s1 s2) (stream-map / s1 s2))

(define (stream-mul s1 s2) (stream-map * s1 s2))



(define (integrate-series s constant)
  (cons-stream constant
	       (stream-mul s
			   (stream-div ones
				       integers))))
				       

  


