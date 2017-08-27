
## Note  


###  recursive process -> iterative process  

In general,the technique of defining an ivariant quantity that remains unchanged from state to state is a powerful way to think about design of iterative algorithms.

eg:  
```

(define (expt b n state-var)
	(if (= n 0)
	1
	(expt b (- n 1) (* b state-var))))
```


### orders of growth  

 We say that R(n) has orders of growth```theta(f(n))``` ,written as R(n) = ``` theta(f(n))```,if there are positive constants k1 and k2 independent of n such that R(n) is sandwiched  between k1*f(n) and k2*f(n)

### tree recurse

fib series: 0 1 1 2 3 5 8 13...

transfomation T:
```                 |
                   / \                  |
                                       / \
                left   right           2  1
                |                      |
               / \                    / \
             left right               1 1
              |                       |
	     / \                     / \
	   left right               1   0
```

```
left + right -> left
left         -> right

```
Observe that applying this transfomation over and over again n times ,starting with 1 and 0 ,produced by the pair Fib(n) Fib(n)

The fibonacci numbers are produced by applying T n times.

```
(define (fib n)
  (define (iter-fib left right n)
    (cond ((= n 0) right)
	   (else (iter-fib (+ left right) left (- n 1)))))
  (iter-fib 1 0 n))

```

accelerate the transfomation

consider T to be the special case of p=0 and q=0 in a family of transfomations T(p,q)

,where T(p,q) transfors the (left, right) according to
```
(p + q)*left + q*right -> left

q*left + p*right ->right
```

then for T^2 we have transfomation:

```
(p^2 + 2pq +2q^2)*left + (2pq +q^2)*right -> left

(2pq + q^2)*left + (p^2 + q^2)*right -> right
```
```

(define (fast-fib n )
  (define (oven? x) (= (remainder x 2) 0))
  
  (define (iter-fib left right p q n)
    (cond ((= n 0) right)
	  ((oven? n)
	   (iter-fib (+ (* (+ (* p p) (* 2 p q) (* 2 q q)) left)  (*(+ (* 2 p q) (* q q)) right))
		     (+ (*(+ (* 2 p q) (* q q)) left) (* (+ (* p p) (* q q)) right))
		     p
		     q
		     (/ n 2)))
	   (else (iter-fib (+ left right) left p q  (- n 1)))))
  (iter-fib 1 0 0 1 n))


```
### great common divisors

Euclid's Algorithms
```
(define (gcd dividend divisor)
	(if (= divisor 0)
	dividend
	(gcd divisor (remainder dividend divisor))))

```
the order of growth is theta(log n) (proved by lame's Themorem)
