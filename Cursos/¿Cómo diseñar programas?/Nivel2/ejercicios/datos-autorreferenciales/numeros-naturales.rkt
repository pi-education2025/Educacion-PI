#lang racket

;; números naturales definidos recursivamente

;; Un Nat es:
;; - 0
;; - (add1 Nat)

;; nat-a-numero : Nat -> Number
;; Convierte un Nat a número entero.
(define (nat-a-numero n)
  (cond
    [(zero? n) 0]
    [else (add1 (nat-a-numero (sub1 n)))]))

;; numero-a-nat : Number -> Nat
;; Convierte un número entero >= 0 a Nat.
(define (numero-a-nat n)
  (if (zero? n)
      0
      (add1 (numero-a-nat (sub1 n)))))

(check-expect (nat-a-numero 0) 0)
(check-expect (nat-a-numero 3) 3)
(check-expect (numero-a-nat 0) 0)
(check-expect (numero-a-nat 4) 4)
