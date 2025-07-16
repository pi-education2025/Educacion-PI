#lang racket

;; duplicar-lista : (listof Number) -> (listof Number)
;; Devuelve una nueva lista con los elementos duplicados.
(define (duplicar-lista lst)
  (cond
    [(empty? lst) '()]
    [else (cons (* 2 (first lst)) (duplicar-lista (rest lst)))]))

;; Pruebas
(check-expect (duplicar-lista '(1 2 3)) '(2 4 6))
(check-expect (duplicar-lista '()) '())
