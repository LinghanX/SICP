#lang racket

;; SICP excercise 1.3: Define a procedure that takes three numbers as arguments
;; and returns the sum of the squares of the two larget numbers.

(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (bigger x y)
  (if (> x y)
      x
      y))

(define
  (sum-of-largest-two x y z)
  (if (= x (bigger x y))
      (sum-of-squares x (bigger y z))
      (sum-of-squares y (bigger x z))))
