#lang racket

;; Crear una lista con los primeros n números naturales
;; primeros-n : Number -> (listof Number)
(define (primeros-n n)
  (if (zero? n)
      '()
      (cons n (primeros-n (- n 1)))))

(check-expect (primeros-n 5) '(5 4 3 2 1))
(check-expect (primeros-n 0) '())
