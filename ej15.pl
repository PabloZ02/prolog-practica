desde2(X,X).
desde2(X, Y) :- nonvar(Y), Y >= X.
desde2(X,Y) :- var(Y), N is X+1, desde2(N,Y).

listasQueSuman(0, 0, []).
listasQueSuman(S, N, [P | L]) :- N > 0, S >= 0, N1 is N-1, between(0, S, P), S1 is S-P, listasQueSuman(S1, N1, L).

cuadradosDe(_, 0, _, []).
cuadradosDe(N, I, S, [L | XS]) :- I > 0, I1 is I-1, listasQueSuman(S, N, L), cuadradosDe(N,I1,S,XS).

cuadradoLatino(N, XS) :- desde2(0, S), cuadradosDe(N, N, S, XS).

todosSon(_, []).
todosSon(S, [S | XS]) :- todosSon(S, XS).

sumar([], [], []).
sumar([X |XS], [Y | YS], [Z | ZS]) :- Z is X + Y, sumar(XS, YS, ZS).

columnaCorrecter(S, XS, []) :- todosSon(S, XS).
columnaCorrecter(S, XS, [Y | YS]) :- sumar(XS, Y, Z), columnaCorrecter(S, Z, YS).

columnaCorrecta(_, []).
columnaCorrecta(S, [X | XS]) :- columnaCorrecter(S, X, XS).

cuadradoMagico(N, XS) :- desde2(0, S), cuadradosDe(N, N, S, XS), columnaCorrecta(S, XS).