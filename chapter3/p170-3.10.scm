


(define (make-withdraw initial-amount)
  (let ((balance initial-amount))
    (lambda (amount)
      (if (>= (- balance amount) 0)
	  (begin (set! balance (- balance amount))
		 balance)
	  ('insufficent fund')))))

(define w1 (make-withdraw 100))

(w1 50)

(define w2 (make-withdraw 100))











		 
