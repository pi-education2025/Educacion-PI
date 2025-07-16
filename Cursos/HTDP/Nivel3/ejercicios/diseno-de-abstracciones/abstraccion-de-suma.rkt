#lang racket

;; Función generalizada para sumar una propiedad de una lista

(struct producto (nombre precio) #:transparent)

;; suma-propiedad : (producto -> Number) (listof producto) -> Number
(define (suma-propiedad f lista)
  (foldr (lambda (p acc) (+ (f p) acc)) 0 lista))

;; suma de precios usando la abstracción
(define (sumar-precios lista)
  (suma-propiedad producto-precio lista))

(check-expect (sumar-precios (list (producto "lápiz" 2) (producto "cuaderno" 5))) 7)
