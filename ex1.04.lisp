(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 0 1) ; 1
(a-plus-abs-b 0 (- 1) ) ; 1

; The (if (> b 0) + -) expression is evaluated into either - or +
; which is the operator of the parent expression. This means that both
; operators and operands can be dynamic.
