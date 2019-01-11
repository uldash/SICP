#lang racket
(require sicp)
; Следующая процедура timed-prime-test, будучи вызвана с целым числом n, печатает n и проверяет, простое ли оно.
; Если n простое, процедура печатает три звездочки и количество времени, затраченное на проверку.
(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (current-inexact-milliseconds))
  )

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (current-inexact-milliseconds) start-time))
      0
      )
  )

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  )

(define (square n) (* n n))
(define (smallest-divisor n)
  (find-divisor n 2)
  )
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))
        )
 )

(define (divides? a b)
  (= (remainder b a) 0)
  )

(define (prime? n)
  (= n (smallest-divisor n))
  )

(timed-prime-test 999983)