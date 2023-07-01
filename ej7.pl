palindromo([], []).
palindromo(L1, L2) :- reverse(L1, L3), append(L1, L3, L2).

iesimo(1, [X |_], X).
iesimo(I, [_|L], X) :- I > 1, N is I-1, iesimo(N, L, X). 