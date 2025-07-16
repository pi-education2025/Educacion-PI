#lang racket

;; es-vacia? : (listof Any) -> Boolean
;; Devuelve #t si la lista está vacía, #f en caso contrario.
(define (es-vacia? lst)
  (empty? lst))

;; Pruebas
(check-expect (es-vacia? '()) #t)
(check-expect (es-vacia? '(1)) #f)
