#lang racket

;; primer-elemento : (listof Any) -> Any
;; Recibe una lista y devuelve su primer elemento.
(define (primer-elemento lst)
  (first lst))

;; Pruebas
(check-expect (primer-elemento '(a b c)) 'a)
(check-expect (primer-elemento '(1 2 3)) 1)
