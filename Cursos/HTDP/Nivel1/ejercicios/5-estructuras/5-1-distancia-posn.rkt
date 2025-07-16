#lang racket

;; Definición de estructura para puntos en el plano
(struct posn (x y))

;; distancia : posn posn -> Number
;; Calcula la distancia euclidiana entre dos puntos p1 y p2.

(define (distancia p1 p2)
  (sqrt (+ (sqr (- (posn-x p1) (posn-x p2)))
           (sqr (- (posn-y p1) (posn-y p2))))))

;; Pruebas
(check-expect (distancia (posn 0 0) (posn 3 4)) 5)
(check-expect (distancia (posn 1 1) (posn 1 1)) 0)
