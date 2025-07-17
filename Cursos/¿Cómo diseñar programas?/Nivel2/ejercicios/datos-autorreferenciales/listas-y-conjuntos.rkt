#lang racket

;; Conversión entre listas y conjuntos (sin duplicados)

;; lista-a-conjunto : (listof Any) -> (listof Any)
;; Quita duplicados de una lista
(define (lista-a-conjunto lst)
  (cond
    [(empty? lst) '()]
    [(member (first lst) (rest lst)) (lista-a-conjunto (rest lst))]
    [else (cons (first lst) (lista-a-conjunto (rest lst)))]))

(check-expect (lista-a-conjunto '(1 2 2 3 1)) '(1 2 3))
(check-expect (lista-a-conjunto '()) '())
