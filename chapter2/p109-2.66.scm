

(define (lookup given-key set-of-records)
  (cond ((null? set-of-records) false)
	((equal? given-key (key (car set-of-records)))
	 (car set-of-records))
	(else (lookup given-key (cdr set-of-records)))))

(define (lookup given-key set-of-records)
  (let ((entry-key (key (entry-tree (set-of-records)))))
    (cond ((null? set-of-records) false)
	  ((equal? given-key entry-key)  (entry-tree (set-of-records)))
	  ((< given-key entry-key) (lookup given-key (left-branch set-of-records)))
	  ((> given-key entry-key) (lookup given-key (right-branch set-of-records))))))
	
	 
	
