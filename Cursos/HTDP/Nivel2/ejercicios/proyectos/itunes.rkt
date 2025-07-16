#lang racket

;; Proyecto: Lista simple de canciones (iTunes simplificado)

(struct cancion (titulo artista duracion) #:transparent)

(define (obtener-artistas lista)
  (lista-a-conjunto (map cancion-artista lista)))

(define (lista-a-conjunto lst)
  (cond
    [(empty? lst) '()]
    [(member (first lst) (rest lst)) (lista-a-conjunto (rest lst))]
    [else (cons (first lst) (lista-a-conjunto (rest lst)))]))

(define lista-canciones
  (list (cancion "Song A" "Artista 1" 210)
        (cancion "Song B" "Artista 2" 180)
        (cancion "Song C" "Artista 1" 200)))

(check-expect (obtener-artistas lista-canciones) '("Artista 1" "Artista 2"))
