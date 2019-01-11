#lang sicp

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

(smallest-divisor 4)
(smallest-divisor 207)
(smallest-divisor 7)
(smallest-divisor 561)
(smallest-divisor 1105)
(newline)
(prime? 5)
(newline)

(define (simple-number a b)
  (if (<= a b)
        (begin (if (prime? a)
            (begin (display a)
                   (newline))
            0)
        (simple-number (+ a 1) b))
        #f)
  #f
  )

(display "simple number")
(simple-number 1 1000000)
