



(define (fold-left op init seqs)
  (define (iter result rest)
    (if (null? rest)
	result
	(iter (op result (car rest)) (cdr rest))))
  (iter init seqs))

(define (fold-right op init seqs)
  (cond ((null? seqs) init)
	(else (op (car seqs)
		  (fold-right op init (cdr seqs))))))

(define nil '())

;; (fold-right / 1 (list 1 2 3))

;; (fold-left / 1 (list 1 2 3))

;; (fold-right list nil (list 1 2 3))

;; (fold-left list nil (list 1 2 3))

;;该op 应该满足交换律
