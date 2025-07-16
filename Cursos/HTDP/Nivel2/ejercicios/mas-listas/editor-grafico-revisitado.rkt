#lang racket

;; Simplificación de editor gráfico que almacena formas en una lista

(struct forma (tipo x y) #:transparent)

(define (agregar-forma formas nueva)
  (cons nueva formas))

(define (contar-formas formas tipo)
  (cond
    [(empty? formas) 0]
    [(string=? (forma-tipo (first formas)) tipo)
     (+ 1 (contar-formas (rest formas) tipo))]
    [else (contar-formas (rest formas) tipo)]))

(define f1 (forma "círculo" 0 0))
(define f2 (forma "cuadrado" 1 1))
(define f3 (forma "círculo" 2 2))

(check-expect (contar-formas (list f1 f2 f3) "círculo") 2)
(check-expect (contar-formas '() "círculo") 0)
