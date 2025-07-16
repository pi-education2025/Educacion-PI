#lang racket

;; triple : Number -> Number
;; Recibe un número y devuelve su triple.
;; Ejemplo: (triple 2) devuelve 6.

;; Pruebas
(check-expect (triple 2) 6)
(check-expect (triple -1) -3)

;; Definición
(define (triple n)
  (* 3 n))
