


(define (deriv exp var)
  (cond ((number? exp) 0)
	((variable? exp)    ;;µÝ¹éµÄ»ù´¡
	 (if (same-varibale? exp var)
	     1
	     0))
	 ((sum? exp)
	  (make-sum (deriv (addend exp) var)
		    (deriv (augend exp) var)))
	 ((product? exp)
	  (make-sum
	   (make-product (multiplier exp)
			 (deriv (multiplicand exp) var))
	  (make-product (deriv (multiplier exp) var)
			(multiplicand exp))))
	 ((exponentiation? exp)
	  (make-product (exponent exp)
			(make-product
			 (make-exponentiation (base exp) (make-substract (exponent exp) 1))
			 (deriv (base exp) var))))
	 (else
	  (error "unknown expression type --DERIV" exp))))


(define (variable? x) (symbol? x))

(define (same-varibale? x y)
  (and (variable? x) (variable? y) (eq? x y)))
(define (make-sum a1 a2)
  (list '+ a1 a2))

(define (make-product x y)
  (list '* x y))

(define (addend s)
  (cadr s))

(define (augend s)
  (caddr s))

(define (multiplier s)
  (cadr s))

(define (multiplicand s)
  (caddr s))

(define (sum? s)
  (and (pair? s) (eq? (car s) '+)))

(define (product? s)
  (and (pair? s) (eq? (car s) '*)))


(define (make-sum x y)
  (cond ((=number? x 0) y)
	((=number? y 0) x)
	(else (list '+ x y))))

(define (make-product x y)
  (cond((or (=number? x 0) (=number? y 0)) 0)
       ((=number? x 1) y)
       ((=number? y 1) x)
       ((and (number? x) (number? y)) (* x y))
       (else (list '* x y))))

(define (=number? exp num)
  (and (number? exp) (= exp num)))
	
	 
(define (make-exponentiation base exponent)
  (list '^ base exponent))

(define (base exp)
  (cadr exp))

(define (exponent exp)
  (caddr exp))

(define (make-substract x y)
  (cond((and (number? x) (number? y)) (- x y))
       (else (list '- x y))))
	 
(define (exponentiation? exp)
  (eq? (car exp) '^))
