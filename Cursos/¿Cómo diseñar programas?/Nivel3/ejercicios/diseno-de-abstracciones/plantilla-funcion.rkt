#lang racket

;; Plantilla para función que procesa una lista de números

;; procesar-lista : (listof Number) -> (listof Number)
(define (procesar-lista lst)
  (cond
    [(empty? lst) empty]
    [else (cons (* 2 (first lst)) (procesar-lista (rest lst)))]))

(check-expect (procesar-lista '(1 2 3)) '(2 4 6))
