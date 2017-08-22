

;;; construct a rectangular coodinates
;;; the value is decided by the point(x y)
;;;  ---------->x
;;;  |1
;;   |1 1
;;;  |1 2 1
;;;  |1 3 3 1
;;;  |1 4 6 4 1
;;;  V
;;;  y
;;;



(define (pascal_triangle x y)
  (if (or (= x 1) (= x y))
      1
      (+ (pascal_triangle (- x 1) (- y 1)) (pascal_triangle x (- y 1)))))
  
  
