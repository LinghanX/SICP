#lang racket

(list 'a 'b 'c)
(list (list 'george))

(list '((x1 x2) (y1 y2)))
(cdr '((x1 x2) (y1 y2)))
(car '((x1 x2) (y1 y2)))

(cadr '((x1 x2) (y1 y2))) 
(cdar '((x1 x2) (y1 y2)))

(pair? (car '(a short list)))
(memq 'red '((red shoes) (blue socks)))
(memq 'red '(red shoes blue socks))


;; note the difference between car and cdr operations
;; (car '(1 2)) returns 1
;; however (cdr '(1 2)) returns '(2)