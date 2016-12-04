#lang racket

;; exercise 1.31

(define (product function start end iter)
  (cond ((> start end) 0)
        (* (function start) (product function (iter start)))))