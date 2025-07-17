#lang racket

;; es-positivo? : Number -> Boolean
;; Recibe un número y devuelve true si es mayor que cero.
;; Ejemplo: (es-positivo? 5) devuelve #t, (es-positivo? 0) devuelve #f.

(define (es-positivo? n)
  (> n 0))

;; Pruebas
(check-expect (es-positivo? 5) #t)
(check-expect (es-positivo? 0) #f)
