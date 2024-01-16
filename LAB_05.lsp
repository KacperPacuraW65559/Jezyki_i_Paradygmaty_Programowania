;zadanie 1
(+ 2 (/ (* 3 4) 8))

;zadanie 2
(+ (sin 12) (cos (mod 256 32)))

;zadanie 3
(defun suma (x y)
  (+ x y))

;zadanie 4
(defun czy-parzysta (x)
  (= (mod x 2) 0))

;zadanie 5
(defun silnia (n)
  (if (= n 0)
      1
      (* n (silnia (- n 1)))))

;zadanie 6
(defun fib (n)
  (if (<= n 1)
      n
      (+ (fib (- n 1)) (fib (- n 2)))))
