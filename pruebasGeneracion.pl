existe(L) :- member(X, L), X = 1.


paraTodo([]).
paraTodo([X | L]) :- X = 1, paraTodo(L). 


noCumple(L) :- member(X,L), not(X = 1).
paraTodoSinRecursion(L) :- not(noCumple(L)).

caminoSimpleConListasAux(_, D, D, [], _).
caminoSimpleConListasAux(GL, D, H, L, P) :- member(Y, GL), Y \= D, append([D], Lnew, L), not(member(Y, P)),
    caminoSimpleConListasAux(GL, Y, H, Lnew, [D | P]).


caminoSimpleConListas(GL, D, H, L) :- caminoSimpleConListasAux(GL,D,H,L,[]).