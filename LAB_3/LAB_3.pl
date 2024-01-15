rzeczownik(kot).
rzeczownik(pies).
rzeczownik(samoch�d).
rzeczownik(komputer).
rzeczownik(kwiat).
rzeczownik(ksi��ka).
rzeczownik(st�).
rzeczownik(dom).
rzeczownik(balon).
rzeczownik(lampa).

czasownik(lubi�).
czasownik(biega�).
czasownik(czyta�).
czasownik(spa�).
czasownik(gra�).
czasownik(je��).
czasownik(p�ywa�).
czasownik(my�).
czasownik(rozumie�).
czasownik(s�ucha�).

przymiotnik(ma�y).
przymiotnik(du�y).
przymiotnik(kolorowy).
przymiotnik(bia�y).
przymiotnik(szary).
przymiotnik(zielony).
przymiotnik(czerwony).
przymiotnik(szybki).
przymiotnik(wolny).
przymiotnik(nowoczesny).
przymiotnik(stary).

%Zadanie 2
weryfikacja_3_slow(X,Y,Z):-
    rzeczownik(X),
    czasownik(Y),
    rzeczownik(Z),
    write("Zdanie napisane poprawnie").

%Zadanie 3
weryfikacja_5_slow(X,Y,Z,W,G):-
    przymiotnik(X),
    rzeczownik(Y),
    czasownik(Z),
    przymiotnik(W),
    rzeczownik(G),
    write("Zdanie napisane poprawnie").

%Zadanie 4
d�ugo��(kontener1, 20).
szeroko��(kontener1,30).
wysoko��(kontener1, 15).
d�ugo��(kontener2, 25).
szeroko��(kontener2,9).
wysoko��(kontener2, 10).

objetosc(X,Wynik):-
    d�ugo��(X,Dlugosc),
    szeroko��(X,Szerokosc),
    wysoko��(X,Wysokosc),
    Wynik is Dlugosc*Szerokosc*Wysokosc.

%Zadanie 5
nwd(X,Y,Dzielnik):-
    X=:=Y,
    Dzielnik is X.

nwd(X,Y,Dzielnik):-
    X<Y,
    Reszta is Y-X,
    nwd(X,Reszta,Dzielnik).

nwd(X,Y,Dzielnik):-
    Y<X,
    Reszta is X-Y,
    nwd(Y,Reszta,Dzielnik).
