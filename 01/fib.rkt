#lang racket
; вычисление чисел фибоначчи
; 0,1,2,3,5,8,13,21,...
; fib(n) = 0 n=0
; fib(n) = 1 n=1
; fib(n) = fib(n-1)+fib(n-2)

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2)))))
  )

(define (fib-iter a b n)
  (if (= n 0)
      a
      (fib-iter b (+ a b) (- n 1)))
  )

(display 3)
(display "\t")
(fib 3)
(display 4)
(display "\t")
(fib 4)
(display 22)
(display "\t")
(fib 22)
(newline)
(display 0)
(display "\t")
(fib-iter 0 1 0)
(display 1)
(display "\t")
(fib-iter 0 1 1)
(display 22)
(display "\t")
(fib-iter 0 1 22)