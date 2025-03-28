% Hechos de progenitor
progenitor(pepe, edu).
progenitor(ana, edu).
progenitor(ana, luis).
progenitor(pepe, luis).
progenitor(maria, julia).
progenitor(juan, julia).

% Hechos de casados
casados(pepe, ana).
casados(juan, maria).
casados(edu, sofia).
casados(luis, carla).
casados(julia, pedro).

distintos(X, Y) :- X \= Y. %no sirve para variables no instanciadas, idealmente emplearlo al final, luego que se valida instanciacion.

% Definiciones 
hermano(X, Y) :- 
    progenitor(Z, X), 
    progenitor(Z, Y), 
    distintos(X, Y). 
tio_politico(X, Y) :- casados(X, Z), tio(Z, Y).
cuniado(X, Y) :- hermano(X, Z), casados(Y, Z).
suegro(X, Y) :- casados(Y, Z), progenitor(X, Z).
consuegro(X, Y) :- suegro(X, Z), suegro(Y, W), casados(Z, W).
