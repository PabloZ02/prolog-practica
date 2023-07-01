desde2(X,X).
desde2(X, Y) :- nonvar(Y), Y >= X.
desde2(X,Y) :- var(Y), N is X+1, desde2(N,Y).

intercalar(L1, [], L1).
intercalar([], L2, L2).
intercalar([X | L1], [Y | L2], L3) :- append([X,Y], LM, L3), intercalar(L1, L2, LM).