#lang racket

;; dia-laboral? : String -> Boolean
;; Recibe un día de la semana (en minúsculas)
;; Devuelve true si es un día laboral (lunes a viernes).

(define (dia-laboral? dia)
  (member dia '("lunes" "martes" "miércoles" "jueves" "viernes")))

;; Pruebas
(check-expect (dia-laboral? "lunes") #t)
(check-expect (dia-laboral? "domingo") #f)
