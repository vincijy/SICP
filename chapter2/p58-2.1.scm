


(define (gcd a b)
  (if (= (remainder a b) 0)
      b
      (gcd b (remainder a b))))


;; (define (make-rat n d) (cons n d))

(define (make-rat n d)
  (define (helper n d)
    (let ((g (gcd n d)))
      (cons (/ n g) (/ d g))))
  (cond ((or (and (> n 0) (> d 0)) (and (< n 0) (> d 0)))  (helper n d))
	(else (helper (- n) (- d)))))


(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (cond ((= (numer x) (denom x))
	 (numer x))
	(else
	 (newline)
	 (display (numer x))
	 (display "/")
	 (display (denom x)))))

  

(define (add-rat a b)
  (make-rat (+  (* (numer a) (denom b)) (* (denom a) (numer b))) (* (denom a) (denom b))))

(define one-third
  (make-rat 1 3))

(define two-third
  (make-rat 2 3))

	


	 


	 


