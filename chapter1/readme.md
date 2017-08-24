
## Note  


#### about design iterative algorithms  

In general,the technique of defining an ivariant quantity that remains unchanged from

state to state is a powerful way to think about design of iterative algorithms.

eg:  
```

(define (expt b n state-var)
	(if (= n 0)
	1
	(expt b (- n 1) (* b state-var))))   ```