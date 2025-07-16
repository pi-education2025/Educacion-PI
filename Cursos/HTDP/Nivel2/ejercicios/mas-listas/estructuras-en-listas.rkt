#lang racket

;; Definir una estructura persona
(struct persona (nombre edad) #:transparent)

;; lista-nombres : (listof persona) -> (listof String)
(define (lista-nombres lst)
  (cond
    [(empty? lst) '()]
    [else (cons (persona-nombre (first lst))
                (lista-nombres (rest lst)))]))

(define p1 (persona "Ana" 25))
(define p2 (persona "Luis" 30))

(check-expect (lista-nombres (list p1 p2)) '("Ana" "Luis"))
