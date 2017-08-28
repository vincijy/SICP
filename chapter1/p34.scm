
 ;;;compute the exponential of a number modular to another number
;;; mod(b^n m)
;;; b =base n= exp
;;; so strange
;; (define (expmod b n m)
;;   (cond ((= n 0) 1)
;; 	 ((even? n) (remainder (square (expmod b (/ n 2) m)) m))
;; 	 (else (remainder (* b (expmod b (- n 1) m)) m))))

;;; recursive

;;; fermat's little theorem

;;; (expmod b n n) = b if n is prime
(define (expmod b n m)
  (if (= n 0)
      1
      (remainder (* b (expmod b (- n 1) m)) m)))
 

;; (expmod 2 2 3)
;; (remainder (* 2 (expmod 2 1 3)) 3)
;; (remainder (* 2 (remainder (* 2 (expmod 2 0 3)) 3)))
;; (remainder (* 2 (remainder (* 2 1) 3)) 3)
;; (remainder (* 2 (remainder 2 3)) 3)
;; (remainder (* 2 2) 3)
 
