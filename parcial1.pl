columnasMalas(XS) :- nth1(I1, XS, X1), nth1(I2,XS,X2), X1 \= X2, D1 is X1 - I1, D2 is X2-I2, D1 = D2.
columnasMalas(XS) :- nth1(I1, XS, X1), nth1(I2,XS,X2), X1 \= X2, D1 is I1 + X1, D2 is I2+X2, D1 = D2.
generable([]).
generable([X | XS]) :- between(1,8,X), generable(XS), not(member(X, XS)).
ochoReinas(XS) :- length(XS, 8), generable(XS), not(columnasMalas(XS)).

montana(L, L1, C, L2) :- append(Mid, L2, L), append(L1, [C], Mid), sort(Mid, Mid), reverse(L2, L2R),
    sort(L2R, L2R), last(L2R, H), C > H.
todasLasListas(A, [X]) :- member(X, A).
todasLasListas(A, [X | XS]) :- todasLasListas(A, XS), member(X, A).