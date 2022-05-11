; Recursive process

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

; Iterative process

(define (f n)
  (define (f-iter count a b c)
    (if (= count 0)
        a
        (f-iter (- count 1)
                b
                c
                (+ c (* 2 b) (* 3 a)))))
  (f-iter n 0 1 2))
