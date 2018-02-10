


(define (cons x y)
  (define (set-x! v) (set! x v))
  (define (set-y! v) (set! y v))
  (define (dispatch m)
    (cond ((eq? m 'car) x)
	  ((eq? m 'cdr) y)
	  ((eq? m 'set-x!) set-x!)
	  ((eq? m 'set-y!) set-y!)
	  (else (error 'undefine command))))
  dispatch)

(define (car z) (z 'car))
(define (cdr z) (z 'cdr))
(define (set-car! z v) ((z 'set-x!) v) z)
(define (set-cdr! z v) ((z 'set-y!) v) z)

(define x (cons  1 2))

(define z (cons x x))

(set-car! (cdr z) 17)

(car x)

