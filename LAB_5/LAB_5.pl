%Zadanie 1
%Obliczenie pola kwadratu
pole_kwadratu(Bok, PoleKwadrat) :-
    Bok > 0,
    Pole is Bok * Bok.
%Obliczenie pola ko�a
pole_kola(Promien, PoleKolo) :-
    Promien > 0,
    Pole is pi * Promien * Promien.

% Obs�uga b��du dla ujemnego boku
pole_kwadratu(Bok, _) :-
    Bok =< 0,
    write('B��d: D�ugo�� boku nie mo�e by� ujemna.').

% Obs�uga b��du dla ujemnego promienia
pole_kola(Promien, _) :-
    Promien =< 0,
    write('B��d: Promie� nie mo�e by� ujemny.').

%Zadanie 2
%Obliczenie �redni� arytmetyczn� dw�ch liczb
srednia_arytmetyczna(Liczba1, Liczba2, Srednia) :-
    Srednia is (Liczba1 + Liczba2) / 2.

%Zadanie 3
figura(kwadrat,4).
figura(trojkat,3).
figura(trapez,4).
figura(pieciokat_foremny,5).
figura(szczesciokat_foremny,6).
figura(osmiokat_foremny,8).
figura(dziesieciokat_foremny,10).

wypisz_figury_do_pieciu_scian :-
    figura(Nazwa, Sciany),
    Sciany =< 5,
    write(Nazwa), nl,
    fail.

%Zadanie 4
klamie(lew, poniedzialek).
klamie(lew, wtorek).
klamie(lew, sroda).

klamie(nosorozec, czwartek).
klamie(nosorozec, piatek).
klamie(nosorozec, sobota).

mowi_prawda(lew, czwartek).
mowi_prawda(lew, piatek).
mowi_prawda(lew, sobota).
mowi_prawda(lew, niedziela).
mowi_prawda(nosorozec, poniedzialek).
mowi_prawda(nosorozec, wtorek).
mowi_prawda(nosorozec, sroda).
mowi_prawda(nosorozec, niedziela).

wczoraj(wtorek, poniedzialek).
wczoraj(sroda, wtorek).
wczoraj(czwartek, sroda).
wczoraj(piatek, czwartek).
wczoraj(sobota, piatek).
wczoraj(niedziela, sobota).
wczoraj(poniedzialek, niedziela).

rozwi�zanie(Dzisiaj) :-
    klamie(nosorozec, X),
    wczoraj(DN, X),
    mowi_prawda(nosorozec, DN),
   (klamie(lew,DN)->
    Dzisiaj is DN,!;
    klamie(lew, Y),
    wczoraj(Dzisiaj, Y),
    mowi_prawda(lew, Dzisiaj)).

%Zadanie 5
:- use_module(library(clpfd)).

rozwi�zanie2(S, E, N, D, M, O, R, Y) :-
    [S, E, N, D, M, O, R, Y] ins 0..9,
    all_different([S, E, N, D, M, O, R, Y]),
    1000 * S + 100 * E + 10 * N + D +
    1000 * M + 100 * O + 10 * R + E #=
    10000 * M + 1000 * O + 100 * N + 10 * E + Y,
    label([S, E, N, D, M, O, R, Y]).

