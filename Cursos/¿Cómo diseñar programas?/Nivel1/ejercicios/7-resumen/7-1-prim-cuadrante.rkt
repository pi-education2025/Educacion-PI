#lang racket

;; Definición de estructura punto con coordenadas x e y
(struct punto (x y))

;; es-en-primero-cuadrante? : punto -> Boolean
;; Devuelve true si las coordenadas x e y son mayores que cero.

(define (es-en-primero-cuadrante? p)
  (and (> (punto-x p) 0)
       (> (punto-y p) 0)))

;; Pruebas
(check-expect (es-en-primero-cuadrante? (punto 1 2)) #t)
(check-expect (es-en-primero-cuadrante? (punto -1 2)) #f)
