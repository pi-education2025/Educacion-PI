#lang racket

;; suma : Number Number -> Number
;; Recibe dos números y devuelve su suma.
;; Ejemplo: (suma 2 3) debe devolver 5.

(define (suma a b)
  (+ a b))

;; Pruebas
(check-expect (suma 2 3) 5)
(check-expect (suma -1 4) 3)
