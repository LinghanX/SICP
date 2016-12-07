#lang racket

;; recursive process

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

;; iterative process
;; initiate with (iterative-f 2 1 0 n)
;; notice in our case the initial a b and c is f(2) f(1) f(0)

(define (iterative-f a b c n)
  (if (< n 3)
      a
      (iterative-f (+ a (* 2 b) (* 3 c))
                   a
                   b
                   (-n 1))))
