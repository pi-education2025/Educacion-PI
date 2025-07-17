#lang racket

;; maximo : (listof Number) -> Number
;; Devuelve el número más grande de la lista.
(define (maximo lst)
  (cond
    [(empty? (rest lst)) (first lst)]
    [else (max (first lst) (maximo (rest lst)))]))

;; Pruebas
(check-expect (maximo '(1 8 3 5)) 8)
(check-expect (maximo '(7)) 7)
