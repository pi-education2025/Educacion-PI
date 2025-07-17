#lang racket

;; doble : Number -> Number
;; Recibe un número y devuelve su doble.
;; Ejemplo: (doble 4) devuelve 8.

(define (doble x)
  (* 2 x))

;; Pruebas
(check-expect (doble 4) 8)
(check-expect (doble -3) -6)
