%zadanie 2 i 3%

rzeczownik(ala).
rzeczownik(jan).
rzeczownik(kot).
rzeczownik(pies).
rzeczownik(rower).
rzeczownik(slonce).

czasownik(ma).
czasownik(jest).
czasownik(lubi).

przymiotnik(fajny).
przymiotnik(niefajny).
przymiotnik(zepsuty).
przymiotnik(niezepsuty).

zadanie(A,B,C,D,E):-
    rzeczownik(A),
    rzeczownik(B),
    rzeczownik(C),
    przymiotnik(D),
    przymiotnik(E),
    write('zdanie poprawne'), nl,
    write(A),write(' '),write(B), write(' '),write(C),write(' '),write(D),write(' '),write(E).

%zadanie silnia rek%

silnia(0,1).
silnia(N,Wynik):-
    N>0,
    NewN is N - 1,
    silnia(NewN, NewWynik),
    wynik is N*NewWynik.

%zadanie ciag fib rek%

fib(0,0).
fib(1,1).
fib(N,Wynik),
    N>1,
    fib is Wynik.


%potega%
potega(_,0,1).
potega(A,B,C):-
    B>0,
    B1 is B-1,
    potega(A,B1,C1),
    C is A*C1.



warunek(N):-
    (N>0 ->
    write('N wieksze od zera');
    write('N jest mniejsze od zera')
).
main:-
    silnia(4,Wynik).

%wieza hanoi%
%
hanoi(1, X, Y, _) :-
    write('Przenies dysk 1 z '), write(X), write(' na '), write(Y), nl.
hanoi(N, X, Y, Z) :-
    N > 1,
    M is N - 1,
    hanoi(M, X, Z, Y),
    write('Przenies dysk '), write(N), write(' z '), write(X), write(' na '), write(Y), nl,
    hanoi(M, Z, Y, X).
