#lang racket

;; Composición de funciones

;; duplica : Number -> Number
(define (duplica x)
  (* 2 x))

;; suma-doble : Number Number -> Number
(define (suma-doble x y)
  (duplica (+ x y)))

(check-expect (suma-doble 2 3) 10)
(check-expect (suma-doble 0 0) 0)
