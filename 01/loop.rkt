#lang sicp
; цикл

(define (loop n)
  (if (> n 0)
        (begin (display n)
               (newline)
               (loop (- n 1)))
        #f)
  )

(loop 6)