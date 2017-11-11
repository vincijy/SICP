(load "basic.scm")
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

;; of rectangle
(define (circumference-rectangle p1 p2 p3 p4)
  (+ (side-length p1 p2) (side-length p2 p3) (side-length p3 p4) (side-lenght p4 p1)))

(define (side-length p1 p2)
  (let ((x1 (x-point p1))
	(x2 (x-point p2))
	(y1 (y-point p1))
	(y2 (y-point p2)))
    (sqrt (+ (square (- x1 x2)) (+ (square (- y1 y2)))))))
	    
(define origin
  (make-point 0 0))

(define tp1
  (make-point 10 0))

(define tp2
  (make-point  0 20))

(define tp3
  (make-point  10 20))

(define (area-rectangle p1 p2 p3 p4)
  (let ((len1 (side-length p1 p2))
	(len2 (side-length p2 p3))
	(len3 (side-length p1 p3)))
    (let ((p (/ (+ len1 len2 len3) 2)))
      (* 2 (sqrt (* p (- p len1) (- p len2) (- p len3)))))))

(area-rectangle origin tp1 tp2 tp3)



	  
  




