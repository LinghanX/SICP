#lang sicp

;; Exercise 1.11.  A function f is defined by the rule that f(n) = n if n<3 and
;; f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3. Write a procedure that
;; computes f by means of a recursive process. Write a procedure that computes f
;; by means of an iterative process.


;; recursive process

;; f : N -> N
;; Given: a natural number
;; Return: a natural number after processes

(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

;; iterative process
(define (f-iter n)
  (if (< n 3)
      n
      (f2 2 1 0 n)))

;; m >= 3
(define (f2 a b c count)
  (if (< count 3)
    a
    (f2 (+ a (* 2 b) (* 3 c))
        a
        b
        (- count 1))))