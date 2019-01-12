(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p)) ; The only thing I observed was an infinite executing procedure with memory consumption increasing