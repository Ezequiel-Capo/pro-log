/*
 Ejercicio 1
 Suponga definidos los siguientes predicados:
    progenitor(X, Y)
    distintos(X, Y)
    casados(X, Y)
         X es el progenitor (madre o padre) de Y.
         X e Y son diferentes.
         X e Y están casados.
 Defina los siguientes predicados:
    hermano(X, Y)
    tio(X, Y)
    tio_politico(X, Y)
    cuñado(X, Y)
    concuñado(X, Y)
    suegro(X, Y)
    consuegro(X, Y)
         X e Y son hermanos.
         X es tío(a) de Y.
         X es tío(a) político(a) de Y.
         X e Y son cuñados.
         X e Y son concuñados.
         X es suegro(a) de Y.
         X e Y son consuegros.
 En caso de ser necesarios otros predicados, defínalos
*/

progenitor(X, Y)
distintos(X, Y)
casados(X, Y)

hermano(X, Y) :- distintos(X,Y), progenitor(Z,Y), progenitor(Z,X).

tio(X, Y) :- progenitor(Z,Y), hermano(X,Z).

tio_politico(X, Y) :- casados(X,Z), tio(Z,Y).

cuñado(X, Y) :- hermano(X,Z), casados(Y,Z)

suegro(X, Y) :- casados(Y,Z), progenitor(X,Z)

consuegro(X, Y):- suegro(X,Z), suegro(Y,W), casados(Z,W).