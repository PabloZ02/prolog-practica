desde2(X,X).
desde2(X, Y) :- nonvar(Y), Y >= X.
desde2(X,Y) :- var(Y), N is X+1, desde2(N,Y).


coprimos(X, Y) :- desde2(1, S), between(1, S, X), Y is S-X, 1 is gcd(X, Y).