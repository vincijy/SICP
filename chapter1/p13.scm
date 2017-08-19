;1.1

(define a 3)
(define b  (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)
(cond (( = a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+2 (if (> b a) b a))
(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
(+ a 1))

;1.2

(/(+ 5 4 (- 2 (- 3 (+ 6 4/5))))
  (* 3 (- 6 2) (- 2 7)))

;1.3
; 答： 剔除掉最小，剩下两个相加

(define (func x y z) (cond ((and (<= x y) (<= x z)) (+ y z))
			   ((and (<= y x) (<= y z)) (+ x z))
			   ((and (<= z x) (<= z y)) (+ x y))
			   ((else 0))
			   ))
;1.4允许运算符为复合表达式的模型认识描述？
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;1.5 ben 发明的一种判断解释器是正则序还是应用序的方法：

(define (p) (p))


(define (test x y)
  (if (= x 0)
      0
      y))
(test 0 (p))
;答：如果p是个死循环那么如果解释器是应用序求值，则test值不为0
;看了答案后补充： (define (p) (p)) 再执行(p)后会不断得调用自己，已经是个死循环

;1.6 关于new-if

(define (new-if predicate then-clause else-clause)
  (cond ( predicate then-clause)
	(else else-clause)))

(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (abs a) (if (< 0) -a a))

(define (improve guess x) (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x )) 0.01)


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
     sqrt-iter((improve guess x) x)))

;; (define (sqrt-iter guess x)
;;   (new-if (good-enough? guess x)
;; 	  guess
;; 	  (sqrt-iter (improve guess x) x)))