

(define (make-segment sp ep)
  (cons sp ep))



(define (start-segment s)
  (car s))



(define (end-segment s)
  (cdr s))

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))



(define (midpoint-segment s)
  (let ((p1 (start-segment s))
	(p2 (end-segment s)))
    (let ((x1 (x-point p1))
	  (y1 (y-point p1))
	  (x2 (x-point p2))
	  (y2 (y-point p2)))
      (make-point (/ (+ x1 x2) 2) (/ (+ y1 y2) 2)))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(define s
  (let ((p1 (make-point 1.0  2.0))
	(p2 (make-point 2.0  3.0)))
    (make-segment p1 p2)))

(print-point (midpoint-segment s))
	   
	
	
	




