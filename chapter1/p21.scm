

(define (fac n)
  (if (= n 1)
      1
      (* n (fac (- n 1)))))

(define (fac-iter n  counter product) 
  (if(>= counter n)
     product
     (fac-iter n  (+ counter 1) (* product (+ counter 1)))))
  
(define (fac-final n)
  (fac-iter n 1 1))
