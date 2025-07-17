#lang racket

;; Abstraer una operación aplicada a cada número

;; aplicar-a-cada : (Number -> Number) (listof Number) -> (listof Number)
(define (aplicar-a-cada f lista)
  (map f lista))

(check-expect (aplicar-a-cada sqr '(1 2 3)) '(1 4 9))
(check-expect (aplicar-a-cada (lambda (x) (* x 3)) '(1 2)) '(3 6))
