#lang racket

;; usar-cons : -> (listof Number)
;; Construye manualmente una lista de números usando `cons`.
(define (usar-cons)
  (cons 1 (cons 2 (cons 3 '()))))

;; Prueba
(check-expect (usar-cons) '(1 2 3))
