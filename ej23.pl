esArista(G,X,Y).
esNodo(G,X).

caminoSimpleAux(_,H,H,[],_).
caminoSimpleAux(G,D,H,L,P) :- esArista(G, D, Y), append([D], Lnew, L), not(member(D, P)), 
    caminoSimple(G,Y,H,Lnew, [D | P]).
caminoSimple(G,D,H,L) :- caminoSimpleAux(G,D,H,L,[]).

noPertenece(G,L) :- esNodo(G,Z), not(member(Z,G)).
caminoHamiltoniano(G, L) :- esNodo(G, X), esNodo(G, Y), caminoSimple(G,X,Y,L), not(noPertenece(G,L)).

%Usando doble negación se puede hacer para todo
noHayCaminos(G) :- esNodo(G,X), esNodo(G,Y), not(caminoSimple(G,X,Y,L)). 
esConexo(G) :- not(noHayCaminos(G)).

noHayConexion(G, X), esNodo(G, Y), Y \= X, not(esArista(X,Y)).
esEstrella(G) :- esConexo(G), esNodo(G, X), not(noHayConexion(G,X)).