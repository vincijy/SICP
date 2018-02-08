




(define (make-account balance)
  (define (with-draw amount)
    (if (>= (- balance amount) 0)
	(begin (set! balance (- balance amount)) balance)
	('insufficent fund)))
  
  (define (deposit amount)
    (begin (set! balance (+ balance amount)) balance))

  (define (dispatch m)
    (cond ((eq? m 'with-draw) with-draw)
	  ((eq?  m 'deposit ) deposit)
	  (else (error 'Unkown request -- Make Acount))))
  dispatch)

(define acc (make-account 100))

((acc 'deposit) 10)

((acc 'with-draw) 20)
		     
