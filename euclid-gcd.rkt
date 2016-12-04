#lang racket

(define (Euclid-gcd a b)
  (if (= b 0)
      a
      (Euclid-gcd b (remainder a b))))

;; running time O(lg b)
