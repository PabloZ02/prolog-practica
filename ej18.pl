esAlgo(0).

multiples(X) :- esAlgo(X), esAlgo(Y), X \= Y.
unico(X) :- not(multiples(X)).