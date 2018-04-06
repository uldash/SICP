#lang racket
(define (square x) ( * x x))
(square 2)
(define (sum-of-squares x y) (+ (square x) (square y)))
(sum-of-squares 2 3)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5)

