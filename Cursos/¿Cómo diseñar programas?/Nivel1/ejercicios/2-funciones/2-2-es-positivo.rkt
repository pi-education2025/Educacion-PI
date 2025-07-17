#lang racket

;; es-positivo? : Number -> Boolean
;; Devuelve true si el número es positivo (mayor que cero).

(define (es-positivo? n)
  (> n 0))

;; Pruebas
(check-expect (es-positivo? 5) #t)
(check-expect (es-positivo? 0) #f)
