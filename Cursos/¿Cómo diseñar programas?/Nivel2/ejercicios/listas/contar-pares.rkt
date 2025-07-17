#lang racket

;; contar-pares : (listof Number) -> Number
;; Cuenta cuántos elementos pares hay en la lista.
(define (contar-pares lst)
  (cond
    [(empty? lst) 0]
    [else (+ (if (even? (first lst)) 1 0)
             (contar-pares (rest lst)))]))

;; Pruebas
(check-expect (contar-pares '(1 2 3 4)) 2)
(check-expect (contar-pares '()) 0)
