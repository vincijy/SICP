


;¸Ä½øµÄgood-enough


(load "p15-improve.scm")
(load "p15-abs.scm")

(define (new-good-enough? guess x)
  (define (delta guess x)
    (abs(- (improve guess x)  guess)
	))
  (define change_rate ( abs(/ (delta guess x)  guess)))
  (< change_rate 0.01))