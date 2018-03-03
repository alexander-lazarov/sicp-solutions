(define (square x)
        (* x x))

(define (sum-of-squares x y)
        (+ (square x)
        (square y)))

(define (first-is-min a b c)
        (and (<= a b) (<= a c)))

(define (max-to-square-sum a b c)
        (cond ((first-is-min a b c) (sum-of-squares b c))
              ((first-is-min b a c) (sum-of-squares a c))
              ((first-is-min c a b) (sum-of-squares a b))))


(max-to-square-sum 1 1 1) ; expected - 2
(max-to-square-sum 1 1 2) ; expected - 5
(max-to-square-sum 1 2 2) ; expected - 8
(max-to-square-sum 1 2 3) ; expected - 13
(max-to-square-sum 2 3 1) ; expected - 13
(max-to-square-sum 3 2 1) ; expected - 13
(max-to-square-sum 3 2 1) ; expected - 13
