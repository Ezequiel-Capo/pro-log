
%ejemplo de mapa
/* Mapa([region(a, R, [A, V]),
      region(b, A, [V, R]),
      region(c, V, [A]),
*/

colores([rojo, verde, azul]).
mapa([region(a, rojo, [azul, verde]),
      region(b, azul, [rojo, verde]),
      region(c, verde, [rojo, azul])]).

colorear([], _).
colorear([region(_Nombre, Color, Vecinos) | Resto], Colores) :-
      member(Color, Colores), 
      \+ (member(Color, Vecinos)),
      colorear(Resto, Colores).