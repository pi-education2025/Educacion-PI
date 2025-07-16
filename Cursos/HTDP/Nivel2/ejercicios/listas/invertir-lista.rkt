#lang racket

;; invertir-lista : (listof Any) -> (listof Any)
;; Invierte el orden de los elementos en la lista.
(define (invertir-lista lst)
  (cond
    [(empty? lst) '()]
    [else (append (invertir-lista (rest lst)) (list (first lst)))]))

;; Pruebas
(check-expect (invertir-lista '(1 2 3)) '(3 2 1))
(check-expect (invertir-lista '()) '())
