#lang racket

(define (fibo n)
  (if (< n 2)
      n
      (+ (fibo (- n 1)) (fibo (- n 2)))))

(displayln (fibo (string->number (vector-ref (current-command-line-arguments) 0))))
