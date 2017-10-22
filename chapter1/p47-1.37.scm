

;;Fn(Dn + Fn-1(Dn-1 + Fn-2(...

;; (define (cont-frac n d k)
;;   (if (= k 1)
;;       (/ (n 1) (d 1))
;;       (/ (n k) (+ (d k) (cont-frac n d (- k 1))))))

;;(cont-frac (lambda (x) 1.0) (lambda (x) 1.0) 15)


;; iterative
;; use i to count
;; strore value in result
;; n and d are two function
(define (cont-frac n d k)
  (define (iter-helper i result)
    (if (= i k)
	result
	(iter-helper (+ i 1) (/ (n i) (+ (d i) result)))))
  (iter-helper 1 (/ (n 1) (d 1))))


;;this can calculate golden-ratio
(cont-frac  (lambda (x) 1.0)  (lambda (x) 1.0) 10)






      









