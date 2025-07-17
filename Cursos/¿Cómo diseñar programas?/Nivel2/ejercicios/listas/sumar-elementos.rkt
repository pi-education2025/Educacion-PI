#lang racket

;; sumar-elementos : (listof Number) -> Number
;; Suma todos los elementos de la lista usando recursión.
(define (sumar-elementos lst)
  (cond
    [(empty? lst) 0]
    [else (+ (first lst) (sumar-elementos (rest lst)))]))

;; Pruebas
(check-expect (sumar-elementos '(1 2 3)) 6)
(check-expect (sumar-elementos '()) 0)
