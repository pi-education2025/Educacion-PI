#lang racket

;; Proyecto: Diccionarios simples con listas asociativas

;; Un diccionario es una lista de pares (clave . valor)
;; buscar : (listof (cons String Any)) String -> Any
(define (buscar dict clave)
  (cond
    [(empty? dict) #f]
    [(string=? (car (first dict)) clave) (cdr (first dict))]
    [else (buscar (rest dict) clave)]))

(define mi-diccionario
  (list (cons "manzana" "fruta")
        (cons "zanahoria" "verdura")
        (cons "perro" "animal")))

(check-expect (buscar mi-diccionario "manzana") "fruta")
(check-expect (buscar mi-diccionario "perro") "animal")
(check-expect (buscar mi-diccionario "gato") #f)
