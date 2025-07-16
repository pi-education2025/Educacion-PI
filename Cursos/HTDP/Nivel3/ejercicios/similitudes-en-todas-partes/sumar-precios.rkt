#lang racket

;; Sumar los precios de una lista de productos

(struct producto (nombre precio) #:transparent)

;; sumar-precios : (listof producto) -> Number
(define (sumar-precios lista)
  (foldr (lambda (p acc) (+ (producto-precio p) acc)) 0 lista))

(check-expect (sumar-precios (list (producto "lápiz" 2) (producto "cuaderno" 5))) 7)
