



(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3)))))

;;;Q1:(sine 12.5)  how many times was procedure p applied?
;;;A1: 
;   sine 12.5
;     | times = 1
;     V  
;   p(sine (/ 12.5 3)) => p(sine (4.1))
;                               |times = 2
;                               V
;   p(sine (/ 4.1 3)) => p(sine (1.3))
;                               |times = 3
;                               V
;   p(sine (/ 1.3 3) => p(sine (0.4))
;                               |times = 4
;                               V                                
;   p(sine (/ 0.4 3) => p(sine (0.1+))
;                               |times = 5
;                               V					
;   p(sine (/ 0.1+ 3) => p(sine ( one smaller than 0.1))=>
  

