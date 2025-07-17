#lang racket

;; Proyecto: Juegos de palabras - parte 2

(define (es-palindromo? palabra)
  (define (reverse lst)
    (if (empty? lst)
        '()
        (append (reverse (rest lst)) (list (first lst)))))
  (equal? (string->list palabra) (reverse (string->list palabra))))

(check-expect (es-palindromo? "ana") #t)
(check-expect (es-palindromo? "hola") #f)
