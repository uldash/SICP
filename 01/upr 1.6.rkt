#lang racket
; Упражнение 1.6.
; Лиза П. Хакер не понимает, почему if должна быть особой формой. «Почему нельзя просто
; определить ее как обычную процедуру с помощью cond?» — спрашивает она. Лизина подруга Ева
; Лу Атор утверждает, что, разумеется, можно, и определяет новую версию if:
; (define (new-if predicate then-clause else-clause)
; (cond (predicate then-clause)
; (else else-clause)))
; Ева показывает Лизе новую программу:
;(new-if (= 2 3) 0 5)
; 5
; (new-if (= 1 1) 0 5)
; 0
; Обрадованная Лиза переписывает через new-if программу вычисления квадратного корня:
; (define (sqrt-iter guess x)
; (new-if (good-enough? guess x)
; guess
; (sqrt-iter (improve guess x)
; x)))
; Что получится, когда Лиза попытается использовать эту процедуру для вычисления квадратных
; корней? Объясните.


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
  
(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x) guess (sqrt-iter (improve guess x) x))
  )

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt (+ 100 37))
(square (sqrt 1000))

; получится out of memory
; if это особая форма и при его вычислении гарантируется вычисление 2 из 3 операндов,
; так что зацикливания не происходит - ленивые вычисления (нормальный порядок)
