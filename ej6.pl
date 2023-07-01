aplanar([], []).
aplanar([X | L1], L2) :- aplanar(X, XPLANO), aplanar(L1, LPLANO), append(XPLANO, LPLANO, L2).
aplanar([X | L1], [X, L2]) :- X \= [], X \= [_| _], aplanar(L1, L2).
