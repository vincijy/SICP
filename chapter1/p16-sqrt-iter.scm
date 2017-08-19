

(load "p16-new-if.scm")
(load "p15-good-enough.scm")
(load "p15-improve.scm")

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (new-sqrt-iter(improve guess x) x)))