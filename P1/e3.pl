
nat(0).
nat(s(X)) :- nat(X).

suma(X,s(Y),s(S)) :- suma(X,Y,S).
suma(X,0,X).

