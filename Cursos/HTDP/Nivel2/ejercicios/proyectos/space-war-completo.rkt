#lang racket

;; Proyecto: Space War simplificado

(struct nave (x y energia) #:transparent)

(define (disparar n)
  (string-append "Disparando desde (" (number->string (nave-x n)) ","
                 (number->string (nave-y n)) ")"))

(define mi-nave (nave 10 20 100))
(check-expect (disparar mi-nave) "Disparando desde (10,20)")
