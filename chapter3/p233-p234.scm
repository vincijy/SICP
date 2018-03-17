
(load "stream.scm")

;; (define (sqrt-stream x)
;;   (cons-stream 1.0
;; 	       (stream-map (lambda (guess)
;; 			     (sqrt-improve guess x))
;; 			   (sqrt-stream x))))


(define (average x y) (/ (+ x y) 2))

(define (improve-guess guess x)
  (average guess (/ x guess)))


;; (define (close-enough? x y)
;;   (< (abs (- x y)) 0.01))

;; (define (sqrt x)
;;   (define (iter guess x)
;;     (if (close-enough? (square guess) x)
;;         guess
;; 	(iter (improve-guess guess x) x)))
;;   (iter 1 x))



(define (sqrt-stream x)
  (cons-stream 1
	       (stream-map (lambda(guess)
		      (improve-guess guess x))
			   (sqrt-stream x))))


(display-to-index (sqrt-stream 2.0) 5)


		      
