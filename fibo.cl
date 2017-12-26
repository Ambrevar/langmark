(defun fibo (n)
  (if (< n 2)
      n
      (+ (fibo (- n 1)) (fibo (- n 2)))))

(print (fibo (parse-integer (aref (argv) (1- (length (argv)))))))
