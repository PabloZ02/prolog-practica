vecino(X, Y, [_|Ls]) :- vecino(X, Y, Ls).
vecino(X, Y, [X|[Y|_]]).
