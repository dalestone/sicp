(define (square x) (* x x))
(define (sum-of-squares x y)
	(+ (square x) (square y)))
(define (largest x y)
  (cond ((> x y) x)
        (else y)))
(define (sum-of-largest-squares x y z)
	(sum-of-squares (largest x y) (largest x z)))