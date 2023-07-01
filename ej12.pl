vacio(nil).

raiz(bin(_, V, _), V).

altura(nil,0).
altura(bin(Izq, _, Der), A) :- altura(Izq, N) , altura(Der, N2) , A is max(N, N2) + 1.

cantidadDeNodos(nil, 1).
cantidadDeNodos(bin(Izq, _, Der), A) :- cantidadDeNodos(Izq, N1), cantidadDeNodos(Der, N2), A is N1 + N2 + 1.

inorder(nil, []).
inorder(bin(Izq, V, Der), L) :- inorder(Izq, LL), inorder(Der, LR), append(LL, [V | LR], L).

abb(T) :- inorder(T, L), sort(L, L).

abbInsertar(X, T1, T2) :- inorder(T1, L), sort([X | L], SL), inorder(T2, SL).