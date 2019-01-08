#lang racket

; Проверка good-enough?, которую мы использовали для вычисления квадратных корней, будет
; довольно неэффективна для поиска квадратных корней от очень маленьких чисел. Кроме того, в
; настоящих компьютерах арифметические операции почти всегда вычисляются с ограниченной точ-
; ностью. Поэтому наш тест оказывается неадекватным и для очень больших чисел. Альтернативный
; подход к реализации good-enough? состоит в том, чтобы следить, как от одной итерации к дру-
; гой изменяется guess, и остановиться, когда изменение оказывается небольшой долей значения
; приближения. Разработайте процедуру вычисления квадратного корня, которая использует такой
; вариант проверки на завершение. Верно ли, что на больших и маленьких числах она работает
; лучше?

(define (abs x) (if (< x 0) (- x) x))
(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x) (average guess (/ x guess)))

(define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x) guess (sqrt-iter (improve guess x) x ))
  )

(define (sqrt x) (sqrt-iter 1.0 x))

(define (better-good-enough? guess prev-guess) (< (abs (/ (- guess prev-guess) prev-guess)) 0.001))

(define (better-sqrt-iter guess prev-guess x)
  (if (better-good-enough? guess prev-guess) guess (better-sqrt-iter (improve guess x) guess x ))
  )

(define (better-sqrt x) (better-sqrt-iter 1.0 0.5 x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (square 1000))
(sqrt 0.00000001)
; (sqrt 10000000000000) зацикливается
(better-sqrt 0.00000001)
(better-sqrt 1000000000000)