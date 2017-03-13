#lang racket

(define expo
  (lambda (x y)
    (cond ((= y 0) 1)
          ((= y 1) x)
          (else (* x (expo x (- y 1)))))))

(define (cons x y)
  (* (expo 2 x)
     (expo 3 y)))