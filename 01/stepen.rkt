#lang racket
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (-  n 1)))
      )
  )

(define (expt-iter b counter result)
  (if (= counter 0)
      result
      (expt-iter b (-  counter 1) (* b result))
      )
  )

(define (expt-fast b n)
  (define (even? n)
    (= (remainder n 2) 0)
    )
  (define (square x) (* x x))
  (cond ((= n 0) 1)
        ((even? n) (square (expt-fast b (/ n 2))))
        ( else (* b (expt-fast b (- n 1))))
        )
  )

(expt 2 3)
(expt-iter 2 3 1)
(expt-fast 2 7)
(expt-fast 2 320)