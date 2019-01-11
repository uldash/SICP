#lang racket
; тест ферма на простоту заданного числа
; основывается на малой теореме ферма

(define (square n) (* n n))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* base (expmod base (- exp 1) m)) m))
        )
  )

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1))))
  )

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)
        )
  )

(fast-prime? 9973 100)
(fast-prime? 100000 100)

(fast-prime? 561 100) ; не простое число, обманывает тест Ферма, есть делители (3)
(fast-prime? 1105 100) ; не простое число, но тест проходит (делитель 5), такие числа редки и называются числами Кармайкла