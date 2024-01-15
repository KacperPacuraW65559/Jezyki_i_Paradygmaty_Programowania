;Zadanie 1
(setq lista1 '(1 2 3 4))
(setq lista2 '(5 6 7 8))
(setq lacz-listy (append lista1 lista2))

;Zadanie 2
(defun odwroc-liste (lista)
  (if (null lista)
      nil
      (append (odwroc-liste (cdr lista)) (list (car lista)))))

(setq lista1 '(1 2 3 4 5))
(setq odwrocona-lista (odwroc-liste lista1))

;Zadanie 3
(defun czy-palindrom (lista)
  (equal lista (odwroc-liste lista)))

(defun odwroc-liste (lista)
  (if (null (cdr lista))
      lista
      (append (odwroc-liste (cdr lista)) (list (car lista)))))

(setq lista1 '(1 2 3 2 1))

(print (czy-palindrom lista1))
	
