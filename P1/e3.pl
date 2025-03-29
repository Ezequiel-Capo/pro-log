nat(0).
nat(s(X)) :- nat(X).

suma(0,X,X).
suma(s(X),Y,s(S)) :- suma(X,Y,S).

%X-Y=R -> R+Y=X
resta(X,Y,R) :- suma(R,Y,X).

%3*4=12-> 3+3+3+3=12.
producto(0,Y,0).
producto(s(X), Y, P) :- producto(X, Y, W), suma(Y,W,P).

distintos(s(X),0). 
distintos(0,s(X)). 
distintos(s(X),s(Y)) :- distintos(X,Y).

mayor(s(X),0).
mayor(s(X),s(Y)) :- mayor(X,Y).

factorial(0, s(0)).  % factorial(0) = 1
factorial(s(X), Y) :- 
    factorial(X, Z), 
    producto(s(X), Z, Y).  

potencia(_, 0, s(0)).  % X^0 = 1
potencia(X, s(Y), Z) :- 
    potencia(X, Y, W), 
    producto(X, W, Z).