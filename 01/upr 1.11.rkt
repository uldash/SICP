#lang racket
; Функция f определяется правилом: f(n) = n, если n < 3, и f(n) = f(n − 1) + f(n − 2) + f(n − 3),
; если n >= 3. Напишите процедуру, вычисляющую f с помощью рекурсивного процесса. Напишите
; процедуру, вычисляющую f с помощью итеративного процесса.

(define (f-recurs n)
  (if (< n 3)
      n
      (+ (f-recurs (- n 1)) (f-recurs (- n 2)) (f-recurs (- n 3)))
   )
  )

(define (f-iter a b c n)
  (if (= n 0)
      a
      (f-iter b c (+ a b c) (- n 1))
      )
  )

(f-recurs 0)
(f-recurs 1)
(f-recurs 2)
(f-recurs 3)
(f-recurs 22)

(newline)
(f-iter 0 1 2 0)
(f-iter 0 1 2 1)
(f-iter 0 1 2 2)
(f-iter 0 1 2 3)
(f-iter 0 1 2 4)
(f-iter 0 1 2 5)
(f-iter 0 1 2 22)