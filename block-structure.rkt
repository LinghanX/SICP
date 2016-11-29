#lang racket

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

;; Notice 1. we could define procedures inside a procedure to
;;           help incapsulate data and procedures;
;;        2. since the block is in the scope of x, we do not need
;;           to specifically pass in x. 