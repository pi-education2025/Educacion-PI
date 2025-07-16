#lang racket

;; clasifica-numero : Number -> String
;; Recibe un número y devuelve:
;; "positivo" si es mayor que cero,
;; "negativo" si es menor que cero,
;; "cero" si es igual a cero.

(define (clasifica-numero n)
  (cond
    [(> n 0) "positivo"]
    [(< n 0) "negativo"]
    [else "cero"]))

;; Pruebas
(check-expect (clasifica-numero 5) "positivo")
(check-expect (clasifica-numero -3) "negativo")
(check-expect (clasifica-numero 0) "cero")
