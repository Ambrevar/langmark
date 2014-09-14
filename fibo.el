(defun fibo (n)
  (if (< n 2)
      n
      (+ (fibo (- n 1)) (fibo (- n 2)))))

(message "%i" (fibo (string-to-number (elt argv 0))))
(kill-emacs)
