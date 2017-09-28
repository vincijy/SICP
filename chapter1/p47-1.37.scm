


;; (define (cont-frac n d k)
;;   (if (= k 1)
;;       (/ (n 1) (d 1))
;;       (/ (n k) (+ (d k) (cont-frac n d (- k 1))))))

;;(cont-frac (lambda (x) 1.0) (lambda (x) 1.0) 15)


;; iterative
(define (cont-frac n d k)
  (define (iter-helper i result)
    (if (= i k)
	result
	(iter-helper (+ i 1) (/ (n i) (+ (d i) result)))))
  (iter-helper 1 (/ (n 1) (d 1))))

(cont-frac  (lambda (x) 1.0)  (lambda (x) 1.0) 10)




      









