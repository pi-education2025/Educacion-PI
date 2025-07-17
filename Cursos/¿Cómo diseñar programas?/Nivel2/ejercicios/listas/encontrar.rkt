#lang racket

;; encontrar : (listof Number) Number -> Boolean
;; Verifica si el número está presente en la lista.
(define (encontrar lst x)
  (cond
    [(empty? lst) #f]
    [(= (first lst) x) #t]
    [else (encontrar (rest lst) x)]))

;; Pruebas
(check-expect (encontrar '(5 3 7 9) 3) #t)
(check-expect (encontrar '(1 2 4) 3) #f)
