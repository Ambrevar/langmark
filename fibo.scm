(define (fibo n)
  (if (< n 2)
      n
      (+ (fibo (- n 1)) (fibo (- n 2)))))

(display (fibo (string->number (car (command-line-arguments)))))
(newline)
