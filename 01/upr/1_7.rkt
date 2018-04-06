#lang racket
; Переопредилили if через cond (new-if) и попытались заменить if на new-if в программе вычисления квадратного корня
; получили утечку памяти
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(define (square x) (* x x))
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))
(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)