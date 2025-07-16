#lang racket

;; Nota: Usamos structs para representar los estados del semáforo.

(struct rojo ())
(struct amarillo ())
(struct verde ())

;; siguiente : Semáforo -> Semáforo
;; Devuelve el siguiente estado del semáforo en la secuencia:
;; rojo -> amarillo -> verde -> rojo

(define (siguiente s)
  (cond
    [(rojo? s) (amarillo)]
    [(amarillo? s) (verde)]
    [(verde? s) (rojo)]))

;; Pruebas
(check-expect (siguiente (rojo)) (amarillo))
(check-expect (siguiente (amarillo)) (verde))
(check-expect (siguiente (verde)) (rojo))
