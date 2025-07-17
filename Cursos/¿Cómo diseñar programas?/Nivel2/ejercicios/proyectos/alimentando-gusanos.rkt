#lang racket

;; Proyecto: Alimentando gusanos

(define (alimentar-gusano gusano energia)
  (cons (+ energia (first gusano)) (rest gusano)))

(check-expect (alimentar-gusano '(5 3 2) 4) '(9 3 2))
