lubi(anna,ksi¹¿ki).
lubi(micha³,muzyka).
lubi(kasia,gotowanie).
lubi(jan,filmy).
lubi(marta,jogging).
lubi(piotr,komiksy).
lubi(ewa,fotografia).
lubi(mateusz,siatkówka).
lubi(magda,podró¿e).
lubi(pawe³,malowanie).

wiek(anna,21).
wiek(micha³,34).
wiek(kasia,25).
wiek(jan,44).
wiek(marta,15).
wiek(piotr,30).
wiek(ewa,29).
wiek(mateusz,60).
wiek(madga,40).
wiek(pawe³,76).

porownanie1(X,Y):-
    wiek(X, WiekX),
    wiek(Y, WiekY),
    WiekX>WiekY.

