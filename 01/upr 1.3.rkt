#lang racket
; определите процедуру, которая принимает в качестве аргументов три числа
; и возвращает сумму квадратов двух бОльших из них

(define (squad x) (* x x))
(define (two-biggest-squad a b c) (cond
                                    ((and (> a c) (> b c))(+ (squad a) (squad b)))
                                    ((and (> a b) (> c b))(+ (squad a) (squad c)))
                                    (+ (squad b) (squad c))))
(two-biggest-squad 1 2 3)
(two-biggest-squad 2 3 1)
(two-biggest-squad 3 1 2)