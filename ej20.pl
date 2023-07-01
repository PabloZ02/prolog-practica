desde2(X,X).
desde2(X, Y) :- nonvar(Y), Y >= X.
desde2(X,Y) :- var(Y), N is X+1, desde2(N,Y).

p(X) :- X > 10.
minimoP(X) :- desde2(1, X), p(X),!.