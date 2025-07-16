#lang racket

;; Uso básico de funciones anónimas (lambda)

;; aplicar-dos-veces : (Number -> Number) Number -> Number
(define (aplicar-dos-veces f x)
  (f (f x)))

(check-expect (aplicar-dos-veces (lambda (y) (+ y 3)) 7) 13)
