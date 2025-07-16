#lang racket

;; Uso básico de la función list para crear listas

;; crear-triple : Any Any Any -> (listof Any)
(define (crear-triple a b c)
  (list a b c))

(check-expect (crear-triple 1 2 3) '(1 2 3))
(check-expect (crear-triple "a" "b" "c") '("a" "b" "c"))
