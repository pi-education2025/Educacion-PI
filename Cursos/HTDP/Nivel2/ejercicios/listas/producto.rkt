#lang racket

;; producto : (listof Number) -> Number
;; Multiplica todos los elementos de la lista.
(define (producto lst)
  (cond
    [(empty? lst) 1]
    [else (* (first lst) (producto (rest lst)))]))

;; Pruebas
(check-expect (producto '(2 3 4)) 24)
(check-expect (producto '(5)) 5)
(check-expect (producto '()) 1)
