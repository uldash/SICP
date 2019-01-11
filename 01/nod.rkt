#lang racket
; Алгоритм Евклида
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))
      )
  )

(gcd 206 40)
(gcd 25 10)
(gcd 10 25)