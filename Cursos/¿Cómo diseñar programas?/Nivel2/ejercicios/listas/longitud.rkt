#lang racket

;; longitud : (listof Any) -> Number
;; Devuelve la cantidad de elementos en la lista.
(define (longitud lst)
  (length lst))

;; Pruebas
(check-expect (longitud '(1 2 3)) 3)
(check-expect (longitud '()) 0)
