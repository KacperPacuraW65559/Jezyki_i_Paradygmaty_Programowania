osoba(jan, adam, ewa, mezczyzna, 30).
osoba(ewa, jan, maria, kobieta, 28).
osoba(maria, adam, anna, kobieta, 60).
osoba(marek, jan, maria, mezczyzna, 35).
osoba(krzysztof, jan, maria, mezczyzna, 40).

rodzenstwo(X, Y) :-
    osoba(X, Ojciec, Matka, _, _),
    osoba(Y, Ojciec, Matka, _, _),
    X \= Y.


bracia(X,Y) :-
    rodzenstwo(X,Y),
    mezczyzna(X),
    mezczyzna(Y).

siostry(X,Y):-
    rodzenstwo(X,Y),
    kobieta(X),
    kobieta(Y).
