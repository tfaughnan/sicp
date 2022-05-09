(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; Applicative-order evaluation:
;; p is evaluated in test, causing infinite recursion.

;; Normal-order evaluation:
;; The expression evaluates to 0 (and p is never evaluated).

(test 0 (p))
