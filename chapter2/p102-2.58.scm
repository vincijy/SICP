


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
	 (else
	  (error "unknown expression type --DERIV" exp))))


(define (variable? x) (symbol? x))

(define (same-varibale? x y)
  (and (variable? x) (variable? y) (eq? x y)))



(define (addend s)
  (car s))

(define (augend s)
  (caddr s))

(define (multiplier s)
  (car s))

(define (multiplicand s)
  (caddr s))

(define (sum? s)
  (and (pair? s) (eq? (cadr s) '+)))

(define (product? s)
  (and (pair? s) (eq? (cadr s) '*)))


(define (make-sum x y)
  (cond ((=number? x 0) y)
	((=number? y 0) x)
	(else (list x '+  y))))

(define (make-product x y)
  (cond((or (=number? x 0) (=number? y 0)) 0)
       ((=number? x 1) y)
       ((=number? y 1) x)
       ((and (number? x) (number? y)) (* x y))
        (else (list  x '*  y))))

(define (=number? exp num)
  (and (number? exp) (= exp num)))
	
	 




