#lang sicp

(define (sum-primes a b)
  (define (iter count accum)
    (cond ((> count b) accum)
          ((primes? count) (iter (+ count 1) (+ count accum)))
          (else (iter (+ count 1) accum))))
  (iter a 0))

(define (sum-primes-2 a b)
  (accumulate +
              0
              (filter prime? (enumerate-interval a b)))