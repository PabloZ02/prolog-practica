interseccion(L1, [] , L1).
interseccion(L1, L2, L3) :- append(Lhead, [X], L2), not(member(X, L1)), append(L3head, [X], L3), interseccion(L1, Lhead, L3head).
interseccion(L1, L2, L3) :- append(Lhead, [X], L2), member(X, L1), interseccion(L1, Lhead, L3).

partir(N, L, L1, L2) :- append(L1, L2, L), length(L1, N).

borrar([], _, []).
borrar([X | L], X, L2) :- borrar(L,X,L2).
borrar([Y | L], X, [Y |L2]) :- X \= Y, borrar(L, X, L2).

sacarDuplicados([], []).
sacarDuplicados([X | L1], [Y | L2]) :- member(X, L1), sacarDuplicados(L1, [Y | L2]).
sacarDuplicados([X | L1], [Y | L2]) :- not(member(X, L1)), X = Y, sacarDuplicados(L1, L2).

insert(X, L, MX) :- append(L2, L1, L), append(L2, [X], L3), append(L3, L1, MX). 

permutacion([], []).
permutacion([X | L1], P) :- permutacion(L1, L), insert(X, L, P).

reparto(L, 1, [L]).
reparto(L, N, [X | LL]) :- append(X, LX, L), N > 1, N1 is N-1, reparto(LX, N1, LL).

repartoSinVacias([], []).
repartoSinVacias(L, [X | LL]) :- append(X, LX, L), X \= [], repartoSinVacias(LX, LL).

elementosTomadosEnOrden(_, 0, []).
elementosTomadosEnOrden([X | L], N, [Y |EM]) :- N > 0, N1 is N-1, X = Y, elementosTomadosEnOrden(L, N1, EM).
elementosTomadosEnOrden([_ | L], N, [Y |EM]) :- N > 0, elementosTomadosEnOrden(L, N, [Y |EM]).
