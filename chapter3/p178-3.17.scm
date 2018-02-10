
(define (count-pair-imprv x)
  (cond ((not (pair? x)) 0)
	((eq? (car x) (cdr x)) (+ 1 (count-pair-imprv (cdr x))))
	(else (+ 1 (count-pair-imprv (car x)) (count-pair-imprv (cdr x))))))

(define x (list 'a 'b 'c))

(define y (cons x x))

(count-pair-imprv y)

(define z2 (cons (list 'a 'b) (list 'a 'b)))

(define (test func arg num)
  (= (func arg) num))

(display (test count-pair-imprv z2 5))
(display (test count-pair-imprv y 4))



 
