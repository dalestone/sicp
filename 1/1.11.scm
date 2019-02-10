; Recursive
(define (f n)
  (cond ((< n 3) n)
        ((>= n 3) (+ (f(- n 1)) (* 2 (f(- n 2))) (* 3 (f(- n 3)))))))

; Iterative - not fully implemented as I gave up
(define (f-result a b c)
  (+ a (* 2 b) (* 3 c)))

(define (f-iter n count result)
  (if (= count (- n 2))
    result
      (f-iter n (+ count 1) result)))

(define (f n)
  (cond ((< n 3) n)
        (f-iter n 0 (f-result 2 1 0))))