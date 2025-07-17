#lang racket

;; Ordenar una lista de cadenas por longitud usando lambda

(define (ordenar-por-longitud lst)
  (sort lst (lambda (a b) (< (string-length a) (string-length b)))))

(check-expect (ordenar-por-longitud '("uno" "dos" "cinco" "cuatro")) '("uno" "dos" "cuatro" "cinco"))
