#lang racket

;; suma-lnn : LNN -> Number
;; LNN: Lista No vacía de Números
(define (suma-lnn lnn)
  (cond
    [(empty? (rest lnn)) (first lnn)]
    [else (+ (first lnn) (suma-lnn (rest lnn)))]))

(check-expect (suma-lnn '(4)) 4)
(check-expect (suma-lnn '(1 2 3)) 6)
