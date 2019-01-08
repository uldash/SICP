#lang racket
; cond оператор множественного сравнения
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
        ((> x 0) (2));выполняется первое попавшееся, затем выход
        )
  )

(abs -5)
(abs 0)
(abs 5)

(newline)

(define (abs-else x)
  (cond ((< x 0) (- x))
        ;(else x)
        (x) ; и без else прокатывает
        )
  )

(abs-else -4)
(abs-else 0)
(abs-else 4)
