#lang racket
(define (fact_recursia_1 n)
  (if (= n 0) 1
  (* n (fact_recursia_1 (- n 1)))))

(define (fact_recursia_2 n)
  (cond ((= n 0) 1)
        (else (* n (fact_recursia_2 (- n 1))))))

(fact_recursia_1 1)
(fact_recursia_2 500)