```lisp
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
```

`new-if` is an ordinary procedure, therefore both arguments are evaluated
regardless of the predicate. Given the `sqrt-iter` definition:

```
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
```
the else clause is always being evaluated, which triggers another execution
of `sqrt-iter`, causing an infinite recursion.
