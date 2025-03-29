append(X,Y,Z) % unir listas, X+Y=Z
% append([1,2,3],[4,5],L) % L=[1,2,3,4,5]

findall(X,between(1,100000,X),L) %generar lista grande

random_permutation(L,L2) %permutar lista grande
% random_permutation([1,2,3,4,5],L2) % L2=[3,1,4,5,2]

member(X,L) %pertenencia de un elemento a una lista
% member(3,[1,2,3,4]) % true                