#lang racket

;; Proyecto: Juegos de palabras - parte 1

(define (cuenta-vocales palabra)
  (define vocales '(#\a #\e #\i #\o #\u
                    #\A #\E #\I #\O #\U))
  (cond
    [(empty? palabra) 0]
    [(member (first palabra) vocales) (+ 1 (cuenta-vocales (rest palabra)))]
    [else (cuenta-vocales (rest palabra))]))

(check-expect (cuenta-vocales (string->list "hola")) 2)
(check-expect (cuenta-vocales (string->list "rhythm")) 0)
