(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (cube x) (* x x x))

(define (good-enough-cube? guess x)
  (< (abs (- (cube guess) x)) 0.00000001))

(define (improve-cube guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cubert-iter guess x)
  (if (good-enough-cube? guess x)
      guess
      (cubert-iter (improve-cube guess x)
                 x)))

(define (cubert x) ; Example: 27 -> 3
  (cubert-iter 1.0 x))
