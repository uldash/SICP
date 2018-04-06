#lang racket
(define (abs1 x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs1 5)
(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))
(abs2 0)
(abs2 -5)
