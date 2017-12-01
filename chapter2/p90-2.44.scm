



(define (up-split painter n)
  (if (= n 1)
      painter
      (let ((smaller (up-split painter (- n 1))))
	(up painter (beside smaller smaller)))))
  
  
