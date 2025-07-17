#lang racket

;; crear-lista : -> (listof Number)
;; Devuelve una lista con los números del 1 al 5.
(define (crear-lista)
  (list 1 2 3 4 5))

;; Prueba
(check-expect (crear-lista) '(1 2 3 4 5))
