(define (pascal r c)
  (if (or (= r 0) (= c 0) (= c r))
      1
      (+ (pascal (- r 1) (- c 1))
         (pascal (- r 1) c))))
