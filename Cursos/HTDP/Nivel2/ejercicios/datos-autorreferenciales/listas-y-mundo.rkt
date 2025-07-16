#lang racket

;; Modelar el mundo con listas

;; Un mundo es una lista de entidades (aquí, números representando objetos)

;; agregar-entidad : (listof Number) Number -> (listof Number)
;; Añade una entidad al mundo
(define (agregar-entidad mundo entidad)
  (cons entidad mundo))

;; eliminar-entidad : (listof Number) Number -> (listof Number)
;; Elimina la primera ocurrencia de entidad del mundo
(define (eliminar-entidad mundo entidad)
  (cond
    [(empty? mundo) '()]
    [(equal? (first mundo) entidad) (rest mundo)]
    [else (cons (first mundo) (eliminar-entidad (rest mundo) entidad))]))

(check-expect (agregar-entidad '(1 2 3) 4) '(4 1 2 3))
(check-expect (eliminar-entidad '(4 1 2 3) 1) '(4 2 3))
(check-expect (eliminar-entidad '(1 2 3) 5) '(1 2 3))
