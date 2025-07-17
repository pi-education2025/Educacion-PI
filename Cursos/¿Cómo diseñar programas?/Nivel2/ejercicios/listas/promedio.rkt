#lang racket

;; promedio : (listof Number) -> Number
;; Calcula el promedio de los elementos en la lista.
(define (promedio lst)
  (cond
    [(empty? lst) 0]
    [else (/ (sumar lst) (length lst))]))

;; sumar : (listof Number) -> Number
;; Suma todos los elementos de una lista.
(define (sumar lst)
  (cond
    [(empty? lst) 0]
    [else (+ (first lst) (sumar (rest lst)))]))

;; Pruebas
(check-expect (promedio '(2 4 6)) 4)
(check-expect (promedio '(10)) 10)
(check-expect (promedio '()) 0)
