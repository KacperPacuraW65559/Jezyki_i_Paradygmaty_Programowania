lubi(anna,ksi��ki).
lubi(micha�,muzyka).
lubi(kasia,gotowanie).
lubi(jan,filmy).
lubi(marta,jogging).
lubi(piotr,komiksy).
lubi(ewa,fotografia).
lubi(mateusz,siatk�wka).
lubi(magda,podr�e).
lubi(pawe�,malowanie).

wiek(anna,21).
wiek(micha�,34).
wiek(kasia,25).
wiek(jan,44).
wiek(marta,15).
wiek(piotr,30).
wiek(ewa,29).
wiek(mateusz,60).
wiek(madga,40).
wiek(pawe�,76).

porownanie1(X,Y):-
    wiek(X, WiekX),
    wiek(Y, WiekY),
    WiekX>WiekY.

