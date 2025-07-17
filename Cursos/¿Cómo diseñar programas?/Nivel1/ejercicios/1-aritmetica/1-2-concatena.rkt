#lang racket

;; concatena : String String -> String
;; Recibe dos cadenas y devuelve la concatenación de ambas.
;; Ejemplo: (concatena "Hola, " "mundo") debe devolver "Hola, mundo".

(define (concatena s1 s2)
  (string-append s1 s2))

;; Pruebas
(check-expect (concatena "Hola, " "mundo") "Hola, mundo")
(check-expect (concatena "" "texto") "texto")
