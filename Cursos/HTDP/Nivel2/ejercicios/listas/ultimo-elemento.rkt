#lang racket

;; ultimo-elemento : (listof Any) -> Any
;; Devuelve el último elemento de una lista no vacía.
(define (ultimo-elemento lst)
  (cond
    [(empty? (rest lst)) (first lst)]
    [else (ultimo-elemento (rest lst))]))

;; Pruebas
(check-expect (ultimo-elemento '(a b c)) 'c)
(check-expect (ultimo-elemento '(1)) 1)
