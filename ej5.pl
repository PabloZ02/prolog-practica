ultimo(L, U) :- append(_, [U], L).
 
reversar([], []).
reversar([X | L], L1) :- reversar(L, LR), append(LR, [X], L1).

prefijo(P,L) :- append(P, _, L).

sufijo(S, L) :- append(_, S, L).

sublista([], _).
sublista(S, L) :- append(SS, _, L), append(_, S, SS), S \= [].

pertenece(X, [X | _]).
pertenece(X, [_ | L]) :- pertenece(X, L).