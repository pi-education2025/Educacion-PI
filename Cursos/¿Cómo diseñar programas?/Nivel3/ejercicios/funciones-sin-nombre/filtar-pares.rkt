#lang racket

;; Filtrar números pares usando función anónima

;; filtrar-pares : (listof Number) -> (listof Number)
(define (filtrar-pares lst)
  (filter (lambda (x) (= (modulo x 2) 0)) lst))

(check-expect (filtrar-pares '(1 2 3 4 5 6)) '(2 4 6))
