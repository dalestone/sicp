(define (A x y) ; Ackermann's function
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1)
                   (A x (- y 1))))))

(A 1 10) ; 1024
(A 2 4) ; 65536
(A 3 3) ; 65536

(define (f n) (A 0 n)) ; Mathematical definition: 2n
(define (g n) (A 1 n)) ; Mathematical definition: 2^n
(define (h n) (A 2 n)) ; I have yet to solve this, the closest to a solution was 2^(2^(n-1)(n/2)) but this results in h(1) being incorrect
    ; I'm probably missing something obvious...
(define (k n) (* 5 n n)) ; Mathematical definition: 5n^2