#lang racket

;; Muñecas rusas: estructuras anidadas

;; Una muñeca puede ser:
;; - una muñeca simple (sin muñeca dentro)
;; - una muñeca que contiene otra muñeca

;; Definir la estructura muñeca
(struct muneca (contenido) #:transparent)

;; profundidad : Muneca -> Number
;; Calcula la profundidad de la muñeca (cuántas muñecas anidadas)
(define (profundidad m)
  (if (muneca? (muneca-contenido m))
      (add1 (profundidad (muneca-contenido m)))
      1))

;; Pruebas
(define m1 (muneca 'vacia))
(define m2 (muneca m1))
(define m3 (muneca m2))

(check-expect (profundidad m1) 1)
(check-expect (profundidad m2) 2)
(check-expect (profundidad m3) 3)
