#lang racket
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))
(define size 2)
size
(define pi 3.14159)
(define radius 10)
(define circumference (* 2 pi radius))

"Radius:"
circumference