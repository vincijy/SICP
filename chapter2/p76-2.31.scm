

(load "basic.scm")

(define (square-tree tree) (tree-map square tree))

(define (tree-map proc tree)
  (map (lambda (subtree)
	 (cond ((pair? subtree) (tree-map proc subtree))
	       (else (proc subtree))))
       tree))
		
(square-tree (list 2 5 (list 5 6) 5 (list 5 (list 6 7))))
