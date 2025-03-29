
suma([],0).
suma([X|L],S):- 
    suma(L,S1), 
    S is S1 + X.

sumaAc([],Ac,Ac).
sumaAc([X|L],Ac,S):- 
    Ac1 is Ac + X, 
    sumaAc(L,Ac1,S).
suma2(L,S):- sumaAc(L,0,S).

pares([],[]).   
pares([X|L],[X|L2]):- 
    X mod 2 =:= 0, 
    pares(L,L2).
pares([X|L],L2):- 
    X mod 2 =\= 0, 
    pares(L,L2).

mayores([],_,[]).
mayores([X|L],N,[X|L2]):- 
    X > N, 
    mayores(L,N,L2).
mayores([X|L],N,L2):-
    X =< N, 
    mayores(L,N,L2).

merge([],L,L).
merge(L,[],L).
merge([X|L1],[Y|L2],[X|L3]):- 
    X < Y, 
    merge(L1,[Y|L2],L3).
merge([X|L1],[Y|L2],[Y|L3]):-
    X >= Y, 
    merge([X|L1],L2,L3).
