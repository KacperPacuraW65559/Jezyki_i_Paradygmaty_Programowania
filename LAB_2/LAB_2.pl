rodzic(zofia,marcin).
rodzic(andrzej,marcin).
rodzic(andrzej,kasia).
rodzic(marcin,ania).
rodzic(marcin,krzy�).
rodzic(krzy�,miko�aj).

kobieta(zofia).
kobieta(kasia).
kobieta(ania).
m�czyzna(andrzej).
m�czyzna(marcin).
m�czyzna(krzy�).
m�czyzna(miko�aj).

%Zadanie 1.1
szcz�liwy(zofia).
szcz�liwy(andrzej).
szcz�liwy(marcin).
szcz�liwy(krzy�).

dwoje_dzieci(andrzej).
dwoje_dzieci(marcin).


potomek(Y, X):-
rodzic(X, Y).

matka(X, Y):-
rodzic(X, Y),
kobieta(X).

dziadkowie(X, Z):-
rodzic(X, Y),
rodzic(Y, Z).

siostra(X, Y):-
rodzic(Z, X),
rodzic(Z, Y),
kobieta(X),
X \= Y.

poprzednik(X,Y):-
    rodzic(X,Y).

poprzednik(X,Z):-
    rodzic(X,Y),
    poprzednik(Y,Z).

%Zadanie 1.2
wnuk(X,Z):-
    rodzic(X,Y),
    rodzic(Y,Z).

%Zadanie 1.3
ciotka(X,Y):-
    rodzic(Z,Y),
    siostra(X,Z),
    kobieta(X).

%Zadanie 1.4
nast�pca(X,Y):-
    rodzic(Y,X).

%Zadanie 2.
zatrudnienie(anna,nowak,zelmer,duza_firma,2000).
zatrudnienie(jan,kowalski,microsoft,duza_firma,3000).
zatrudnienie(micha�,kozio�,sklep_osiedlowy,mala_firma,1400).
zatrudnienie(andrzej,r�g,apteka,mala_firma,3000).
zatrudnienie(marek,markowski,intel,duza_firma,1000).

zadowolony(X,Y):-
    zatrudnienie(X,Y,_,mala_firma,Z),
    Z>2500.

firma_zarobki(X,Y):-
    zatrudnienie(X,Y,_,duza_firma,Z),
    Z<1500.
