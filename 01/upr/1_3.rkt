#lang racket
; возвращает сумму квадратов двух больших чисел
(define (sqr-sum a b) (+ (* a a) (* b b)))

(define (two-sqr-sum a b c)
        (cond ((and (< a b) (< a c)) (sqr-sum b c))
              ((and (< b a) (< b c)) (sqr-sum a c))
              (else (sqr-sum a b))))
(two-sqr-sum 1 3 4)