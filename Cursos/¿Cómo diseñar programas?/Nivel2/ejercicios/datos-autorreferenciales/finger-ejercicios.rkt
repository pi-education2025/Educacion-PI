#lang racket

;; finger-ejercicios: práctica básica de listas

;; cuenta-elementos : (listof Any) -> Number
(define (cuenta-elementos lst)
  (cond
    [(empty? lst) 0]
    [else (+ 1 (cuenta-elementos (rest lst)))]))

;; encontrar-mayor : (listof Number) -> Number
(define (encontrar-mayor lst)
  (cond
    [(empty? (rest lst)) (first lst)]
    [else (max (first lst) (encontrar-mayor (rest lst)))]))

(check-expect (cuenta-elementos '(a b c)) 3)
(check-expect (encontrar-mayor '(2 9 3 5)) 9)
