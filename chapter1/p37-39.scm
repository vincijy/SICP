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
  
