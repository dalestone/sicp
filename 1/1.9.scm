(define (+ a b) ; iterative
    (if (= a 0)
        b
        (int (+ (dec a) b))))

(define (+ a b) ; recursive
    (if (= a 0)
        b
        (+ (dec a) (inc b))))