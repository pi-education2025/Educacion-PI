#lang racket

;; Proyecto: Tetris simple (representación básica)

(define (mover-pieza pieza dx dy)
  (map (lambda (pos)
         (cons (+ (car pos) dx) (+ (cdr pos) dy)))
       pieza))

(check-expect (mover-pieza '((0 . 0) (1 . 0) (0 . 1)) 1 2) '((1 . 2) (2 . 2) (1 . 3)))
