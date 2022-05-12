; a) p is called 5 times when evaluating (sine 12.15).
;    This can be found by computing \lceil \log_{3}(10x) \rceil for input x,
;    or of course by tracing the process manually.

; b) Space: O(log3(n))
;    Time: O(log3(n))

(define (cube x)
  (* x x x))

(define (p x)
  (print "call")
  (- (* 3 x)
     (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))
