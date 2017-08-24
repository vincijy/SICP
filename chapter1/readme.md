
## Note  


####  recursive process -> iterative process  

In general,the technique of defining an ivariant quantity that remains unchanged from

state to state is a powerful way to think about design of iterative algorithms.

eg:  
```

(define (expt b n state-var)
	(if (= n 0)
	1
	(expt b (- n 1) (* b state-var))))
```


#### orders of growth  

 we say that R(n) has orders of growth ¦È(f(n)) ,written as R(n) =  ¦È(f(n)),if

 there are positive constants k1 and k2 independent of n such that R(n) is sandwiched 
 between k1*f(n) and k2*f(n)

#### tree recurse

transfomation:
                                       2
                |                      |
               / \                    / \
             left right               1 1
              |                       |
	     / \                     / \
	   left right               1   0

left + right -> left
left         -> right
