;zadanie 12 . Zbiory reprezentowane są listami bez powtórzeń elementów. Utworzyć procedurę dodaj-dozbioru, która dodaje obiekt do danego zbioru (uwaga: w zbiorze nie może być powtórzeń
;elementów).

(defun dodaj_do_zbioru (zbior element)
  (let ((powtorzony_el nil))
    (dolist (el zbior)
      (if (equal el element)
          (setq powtorzony_el x))) ;
    (if (not powtorzony_el) 
        (push element zbior))))

Wywołanie w konsoli:
(setq moj_zbior '(1 2 3 4))
(dodaj_do_zbioru moj_zbior 3)
(dodaj_do_zbioru moj_zbior 5)

Wynik: moj_zbior (5 1 2 3 4)



;zadanie 14 Posługując się predykatem eq? zdefiniować procedurę rowne? , która bada równość dowolnych
; danych.

;rozwiazanie z equal
(defun rowne? (x y)
(equal x y))

;wywolanie

;rozwiazanie z eq
(defun rowne? (x y)
(eq x y))

(rowne? 5 5)
;wynik - T

(rowne? 4 10)
;wynik - NIL

;Predykat equal porównywał liczby i tekst czy są równe, natomiast predykat eq porównywał tylko liczby.
