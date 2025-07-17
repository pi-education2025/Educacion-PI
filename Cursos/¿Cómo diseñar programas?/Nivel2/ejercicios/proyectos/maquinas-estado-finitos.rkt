#lang racket

;; Proyecto: Máquina de estados finitos simple

(define estados '(apagado encendido))

(define (maquina-estado estado entrada)
  (cond
    [(and (equal? estado 'apagado) (equal? entrada 'encender)) 'encendido]
    [(and (equal? estado 'encendido) (equal? entrada 'apagar)) 'apagado]
    [else estado]))

(check-expect (maquina-estado 'apagado 'encender) 'encendido)
(check-expect (maquina-estado 'encendido 'apagar) 'apagado)
