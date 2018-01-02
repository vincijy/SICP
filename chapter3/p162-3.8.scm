


(define (func arg)
  (lambda(x) (set! arg (- arg x))
	 arg))

(define f (func 1))

(+ (f 0) (f 1))

;; (+ (f 1) (f 0))


	   


  
