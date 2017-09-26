
(load "basic-func.scm")

(define (close-enough? a b)
  (< (abs (- a b)) 0.1))

(define (search f neg-point pos-point)
  (let ((mid-point (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
	mid-point
	(let ((test-value (f mid-point)))
	  (cond ((positive? test-value) (search f neg-point mid-point))
		((negative? test-value) (search f mid-point pos-point))
		(else mid-point))))))
  
;;improve

(define (half-interval-method f a b)
  (let ((a-value (f a))
	(b-value (f b)))
    (cond ((and (negative? a-value) (positive? b-value))
	   (search f a b))
	  ((and (negative? b-value) (positive? b-value))
	   (search f b a))
	  (else
	   (error "Values are not of opposite sign" a b)))))

;; (half-interval-method (lambda (x) (- (square x) 9)) -100 100)
;; (search (lambda (x) (- (square x) 9)) -100 100.0)
;;(search (lambda (x) (- (square x) 120.0)) -100.0 130.0)
(half-interval-method (lambda (x) (- (square x) 120)) 10 18.0)

