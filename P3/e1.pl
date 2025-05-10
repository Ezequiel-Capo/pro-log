
%ejemplo de mapa
/* Mapa([region(a, R, [A, V]),
      region(b, A, [V, R]),
      region(c, V, [A]),

colores([rojo, verde, azul]).
mapa([region(a, rojo, [azul, verde]),
      region(b, azul, [rojo, verde]),
      region(c, verde, [rojo, azul])]).

colorear([], _).
colorear([region(_Nombre, Color, Vecinos) | Resto], Colores) :-
      member(Color, Colores), 
      \+ (member(Color, Vecinos)),
      colorear(Resto, Colores).
	  */

colorear(Mapa, Colores) :- generate(Mapa, Colores), check(Mapa).

not_member(_,[]).
not_member(X, [Y|L]) :- X\=Y, not_member(X, L).

generate([],_).
generate([region(_,X,_)|L],Colores) :- member(X,Colores),generate(L,Colores).

check([]).
check([region(_,X,Vecinos)|L]):- not_member(X,Vecinos), check(L).