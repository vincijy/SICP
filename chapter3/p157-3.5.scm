

(define (estimate-integral trials P?  x1 x2 y1 y2)
  (let((area (* (- x2 x1) (- y2 y1))))
       (* area (monte-carlo trials
			    (lambda()
			      (P? (random-in-range x1 x2)
				  (random-in-range y1 y2)))))))

(define (random-in-range low hight)
  (let((range (- hight low)))
    (+ low (random range))))

(define (monte-carlo trials experiment)
  (define (iter trials-remaining trials-passed)
    (cond ((= trials-remaining 0)
	   (/ trials-passed trials))
	  ((experiment)
	   (iter (- trials-remaining 1) (+ trials-passed 1)))
	  (else
	   (iter (- trials-remaining 1) trials-passed))))
  (iter trials 0))

;;注意数值应设置为浮点数
(define (in-unit-circle? x y)
  (< (+ (square x) (square y)) 1.0))

(define (estimate-pi trials)
  (* 4 (estimate-integral trials in-unit-circle? 0 1.0  0 1.0)))

  
