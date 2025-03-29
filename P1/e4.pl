nat(0).
nat(s(X)) :- nat(X).
%a)

largo([],0).
largo([X|L],s(Y)) :- largo(L,Y).

ultimo([X],X).
ultimo([_|L],W):- ultimo(L,W).

sin_ultimo([_],[]).
sin_ultimo([X|L],[X|S]):- sin_ultimo(L,S).

reverso([],[]).
reverso([X|L], R) :- reverso([L],R), append(W,[X],R)

reverso_acc([],Ac,Ac).
reverso_acc([X|L],Ac,R):- reverso_acc(L,[X|Ac],R).

reverso2(L,R) :-
    reverso_acc(L,[],R).


prefijo(L,[]).
prefijo([X|L],[X|P]) :- prefijo(L,P).

prefijo2(L,P):- append(P,_,L).

sufijo(L,L).
sufijo([X|L], S) :- sufijo(L, S).

sufijo2(L,S):- append(_,S,L)

sublista(_,[]).
sublista(L,[X|S]) :- append(P,_,L), append(_,[X|S],P).

borrar_todos([], _, []).
borrar_todos([X|L], X, B) :- borrar_todos(L, X, B).
borrar_todos([Y|L], X, [Y|B]) :- X \= Y, borrar_todos(L, X, B).

sin_repetidos([], []).
sin_repetidos([X|L], S) :- 
    borrar_todos(L, X, L2), 
    sin_repetidos(L2, S2), 
    S = [X|S2].

%b)
conjunto(L) :- sin_repetidos(L, L).

conj_iguales(L1, L2) :- 
    sin_repetidos(L1, S1), 
    sin_repetidos(L2, S2), 
    permutation(S1, S2). %def prolog

subconjunto([], _). 
subconjunto([X|S], C) :- 
    member(X, C), 
    subconjunto(S, C).
