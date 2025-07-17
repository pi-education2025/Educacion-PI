#lang racket

;; Función parametrizada para aplicar cualquier función a cada elemento

;; aplicar-funcion : (Number -> Number) (listof Number) -> (listof Number)
(define (aplicar-funcion f lst)
  (map f lst))

(check-expect (aplicar-funcion (lambda (x) (* x x)) '(1 2 3)) '(1 4 9))
