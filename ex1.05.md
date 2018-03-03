```lisp
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))
```

# If the interpreter is using using applicative-order evaluation:

The second operand `(p)` is being evaluated into `(p)` infinitely.

```
(test 0 (p))
(test 0 (p))
(test 0 (p))
...
```

# If the interpreter is using normal-order evaluation:

The expression evaluates to 0:

```
(test 0 (p))
(if (= 0 0) 0 (p))
(if #t 0 (p))
0
```
