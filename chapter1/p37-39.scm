(load "basic-func.scm")

;;;sum of (a) (a+1) (a+2) ... (b)
;; (define (sum-integers a b)
;;   (if (> a b)
;;       0
;;       (+ a (sum-integers (+ a 1) b))))

;; (define (sum-cube a b)
;;   (if (> a b)
;;       0
;;       (+ (cube a) (sum-cube (+ a 1) b))))

;; (define (sum-pi a b)
;;   (if (> a b)
;;       0
;;       (+ (/ 1 (* a (+ a 1))) (sum-pi (+ a 1) b))))

(define (sum-term a b next term)
  (if (> a b)
      0
      (+ (term a) (sum-term (next a) b next term))))

(define (sum-integers a b)
  (define (inc x)
    (+ x 1))
  (define (identity x)
    x)
  (sum-term a b inc identity))

(sum-integers 1 10)
  
(define (sum-cube a b)
  (define (inc x)
    (+ x 1))
  (sum-term a b inc cube))

;; 1.0 is quite defferent from 1
(define (pi-sum a b)
  (define (term a)
    (/ 1.0  (* a (+ a 2))))
  (define (next a)
    (+ a 4))
  (sum-term a b next term))

(* (pi-sum 1 1000) 8)


(define (integral a b term dx)
  (define (next x)
    (+ x dx))
  (define (func x)
    (term ( + x  (/ dx 2))))
  (* (sum-term a b next func)  dx))

(integral 0 1 cube 0.01)
   
    
   
