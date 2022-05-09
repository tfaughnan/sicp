;; Return the sum of a and |b|.
;; More specifically: If b is positive, return a + b. Otherwise, return a - b.

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
