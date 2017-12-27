#lang typed/racket

(require typed/rackunit)

(: calculator : (-> String Integer))
(define (calculator expr)
  (calculate (string->list expr) 0))

(: calculate : (-> (Listof Char) Integer Integer))
(define (calculate lst temp)
  (if (null? lst)
      temp
      (calculate (cdr lst) 2)))

;; tests:
(check-equal? (calculator "1") 1 "sample test")
(check-equal? (calculator "1 + 12") 13)
(check-equal? (calculator "12 + 3 * 4") 24)