concatenar([],  L3, L3).
concatenar([X | L1], L2, [X | L3]) :- concatenar(L1, L2, L3).