;; Cube root approximation

(define (cbrt x)
  (cbrt-iter 1.0 x x))

(define (cbrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess x)
      guess
      (cbrt-iter (improve guess x)
                 guess
                 x)))

(define (good-enough? guess prev-guess x)
  (< (abs (- guess prev-guess))
     (/ guess 1e+10)))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))
