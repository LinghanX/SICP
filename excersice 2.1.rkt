#lang racket

(define (gcd n d)
  (if (= d 0)
      n
      (gcd d (remainder n d))))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))

(define (better-make-rat n d)
  (if (< d 0)
      (make-rat (* -1 n) (* -1 d))
      (make-rat n d)))

;;;> (better-make-rat -6 9)
;;;'(-2 . 3)
;;;> (better-make-rat 6 -9)
;;;'(-2 . 3)
;;;> (better-make-rat -6 -9)
;;;'(2 . 3)
;;;> (better-make-rat 6 9)
;;;'(2 . 3)