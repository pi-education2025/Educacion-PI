#lang racket

;; Función auxiliar recursiva para calcular factorial

;; factorial : Number -> Number
(define (factorial n)
  (define (aux n acc)
    (if (zero? n)
        acc
        (aux (- n 1) (* acc n))))
  (aux n 1))

(check-expect (factorial 5) 120)
(check-expect (factorial 0) 1)
