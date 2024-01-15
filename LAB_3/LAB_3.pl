rzeczownik(kot).
rzeczownik(pies).
rzeczownik(samochód).
rzeczownik(komputer).
rzeczownik(kwiat).
rzeczownik(ksi¹¿ka).
rzeczownik(stó³).
rzeczownik(dom).
rzeczownik(balon).
rzeczownik(lampa).

czasownik(lubiæ).
czasownik(biegaæ).
czasownik(czytaæ).
czasownik(spaæ).
czasownik(graæ).
czasownik(jeœæ).
czasownik(p³ywaæ).
czasownik(myæ).
czasownik(rozumieæ).
czasownik(s³uchaæ).

przymiotnik(ma³y).
przymiotnik(du¿y).
przymiotnik(kolorowy).
przymiotnik(bia³y).
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
d³ugoœæ(kontener1, 20).
szerokoœæ(kontener1,30).
wysokoœæ(kontener1, 15).
d³ugoœæ(kontener2, 25).
szerokoœæ(kontener2,9).
wysokoœæ(kontener2, 10).

objetosc(X,Wynik):-
    d³ugoœæ(X,Dlugosc),
    szerokoœæ(X,Szerokosc),
    wysokoœæ(X,Wysokosc),
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
