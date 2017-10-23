

(load "basic-func.scm")

(define ((repeated f n) x)
    (define (helper i x)
      (if (= i n)
	  (f x)
	  (f (helper (+ i 1) x))))
    (helper 1 x))

((repeated square 2) 5)








    
  
