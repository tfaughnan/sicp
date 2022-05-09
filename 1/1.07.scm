(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;; We have hard-coded a tolerance which may be larger than x itself, so the
;; result of sqrt may have a relatively large margin of error.
;; E.g. (sqrt 0.00025) yields roughly 0.0338698444511654 while the true value
;; is roughly 0.0158113883008419, a more than 100% error!

;; For very large numbers, convergence may never occur if the limited precision
;; of floating point numbers prevents x and the guess from differing by our
;; given tolerance.
;; E.g. (sqrt 1e+100) does not converge.

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

;; We define a better tolerance check which considers the difference between
;; the current and previous guess relative to the magnitude of the guess, and
;; we define new-sqrt-iter and new-sqrt to use it.

;; This change improves our procedure for both small and large numbers.
;; E.g. (new-sqrt 0.00025) has nearly 0% error, and (new-sqrt 1e+100) correctly
;; gives 1e+50.

(define (new-good-enough? guess prev-guess x)
  (< (abs (- guess prev-guess))
     (/ guess 1e+10)))

(define (new-sqrt-iter guess prev-guess x)
  (if (new-good-enough? guess prev-guess x)
    guess
    (new-sqrt-iter (improve guess x)
                   guess
                   x)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x x))
