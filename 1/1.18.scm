(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (fast-* a b)
  (define (fast-*-iter a b n)
    (cond ((= b 0) n)
          ((even? b) (fast-*-iter (double a) (halve b) n))
          (else (fast-*-iter a (- b 1) (+ n a)))))
  (fast-*-iter a b 0))
