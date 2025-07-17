#lang racket

;; mayores-a : (listof Number) Number -> (listof Number)
;; Devuelve una nueva lista con los elementos mayores al umbral dado.
(define (mayores-a lst umbral)
  (cond
    [(empty? lst) '()]
    [else
     (if (> (first lst) umbral)
         (cons (first lst) (mayores-a (rest lst) umbral))
         (mayores-a (rest lst) umbral))]))

;; Pruebas
(check-expect (mayores-a '(1 5 3 7) 4) '(5 7))
(check-expect (mayores-a '(1 2 3) 5) '())
