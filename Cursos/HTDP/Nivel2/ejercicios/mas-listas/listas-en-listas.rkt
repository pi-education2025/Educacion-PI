#lang racket

;; suma-de-listas : (listof (listof Number)) -> Number
(define (suma-de-listas lsts)
  (cond
    [(empty? lsts) 0]
    [else (+ (sumar (first lsts))
             (suma-de-listas (rest lsts)))]))

(define (sumar lst)
  (cond
    [(empty? lst) 0]
    [else (+ (first lst) (sumar (rest lst)))]))

(check-expect (suma-de-listas '((1 2) (3 4) (5))) 15)
(check-expect (suma-de-listas '()) 0)
