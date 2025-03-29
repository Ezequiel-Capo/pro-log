largo([],0). 
largo([_|L],N):- 
    largo(L,X),
    N is X+1. 

largoAc([],Ac,Ac). 
largoAc([_|L],Ac,N):- 
    Ac1 is Ac + 1, 
    largoAc(L,Ac1,N). 

largo2(L,N):- largoAc(L,0,N).


maximo([X],X).
maximo([X|L],M):- maximo(L,M), X > M.
maximo([X|L],X):- maximo(L,M), X =< M.

maximoAc([],Ac,Ac).
maximoAc([X|L],Ac,M):- 
    X > Ac, 
    maximoAc(L,X,M).
maximoAc([X|L],Ac,M):- 
    X =< Ac, 
    maximoAc(L,Ac,M).

maximo2(L,M):- maximoAc(L,0,M).

% Extra: Performance comparison between `largo/2` and `largo2/2`.
% ?- findall(X,between(1,1000000,X),L),time(largo(L,X)).
% Result: 1,999,999 inferences, 0.172 CPU in 0.374 seconds (46% CPU, 11636358 Lips)
% X = 1000000,
% L = [1, 2, 3, 4, 5, 6, 7, 8, 9|...].
% ?- findall(X,between(1,1000000,X),L),time(largo2(L,X)).
% Result: 1,000,000 inferences, 0.016 CPU in 0.018 seconds (85% CPU, 64000000 Lips)
% X = 1000000,
% L = [1, 2, 3, 4, 5, 6, 7, 8, 9|...].

