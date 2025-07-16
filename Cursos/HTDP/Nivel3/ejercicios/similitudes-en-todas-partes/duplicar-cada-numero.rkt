#lang racket

;; Duplicar cada número en una lista

;; duplicar-todos : (listof Number) -> (listof Number)
(define (duplicar-todos lista)
  (map (lambda (n) (* 2 n)) lista))

(check-expect (duplicar-todos '(1 2 3)) '(2 4 6))
