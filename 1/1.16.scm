(define (fast-expt b n)
  (define (fast-expt-iter b counter product)
    (cond ((= counter 0) product)
          ((even? counter) (fast-expt-iter (* b b)
                                           (/ counter 2)
                                           product))
          (else (fast-expt-iter b
                                (- counter 1)
                                (* b product)))))
  (fast-expt-iter b n 1))
