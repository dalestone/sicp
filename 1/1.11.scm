(define (f n)
  (cond ((< n 3) n)
        ((>= n 3) (+ (f(- n 1)) (* 2 (f(- n 2))) (* 3 (f(- n 3)))))))

(define (f-inter n))