


(define (make-account balance password)
  (lambda(psw operation)
    (cond ((eq? psw password)
	   (cond((eq? operation 'withdraw)
		 (lambda(amount) (begin (set! balance (- balance amount)) balance)))
		((eq? operation 'deposit)
		 (lambda(amount) (begin (set! balance (+ balance amount)) balance)))))
	  (else (lambda(amount) 'incorrect-password)))))
		
(define acc (make-account 100 'secrect-psw))

((acc 'secrect-psw 'withdraw) 10)
