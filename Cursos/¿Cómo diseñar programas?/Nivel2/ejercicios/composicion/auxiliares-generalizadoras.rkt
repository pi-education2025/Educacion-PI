#lang racket

;; Función auxiliar generalizadora para filtrar listas

;; filtrar : (Any -> Boolean) (listof Any) -> (listof Any)
(define (filtrar pred lst)
  (cond
    [(empty? lst) '()]
    [(pred (first lst)) (cons (first lst) (filtrar pred (rest lst)))]
    [else (filtrar pred (rest lst))]))

(check-expect (filtrar even? '(1 2 3 4 5)) '(2 4))
(check-expect (filtrar (lambda (x) (> x 3)) '(1 2 3 4 5)) '(4 5))
