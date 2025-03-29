1 ?- X is 10 + 5.
X = 15.

2 ?- 10 + 5 is X.
ERROR: Arguments are not sufficiently instantiated

3 ?- 10 + 5 is 10 + 5. 
false.

4 ?- Y = 5, X is Y + 1.
Y = 5,
X = 6.

5 ?- X = 5, X is X + 1.
false.

6 ?- X = 1, X > 0.
X = 1.

7 ?- X < X + 1.
ERROR: Arguments are not sufficiently instantiated

8 ?- X > 0, X = 1. 
ERROR: Arguments are not sufficiently instantiated

9 ?- 10 + 5 =:= 10 + 5.
true.

10 ?- 20 - 5 =:= 10 + 5.
ERROR: Syntax error: Operator expected

10 ?- 20 - 5 = 10 + 5.
true.

10 ?- X \= 10.
false.

11 ?- X = 5, X \= 10.
X = 5.

12 ?- X =\= 10.
ERROR: Arguments are not sufficiently instantiated

13 ?- X = 5, X =\= 10.
X = 5.

14 ?- X \= Y.
false.

DATA:

\= (Desigualdad de unificación)

Comprueba si dos términos no pueden unificarse.

No realiza evaluación aritmética, solo compara la estructura.

-------------------------------------------------------------------------
=\= (Desigualdad aritmética)

Compara valores numéricos después de evaluar las expresiones aritméticas.

Ambos lados deben ser valores numéricos o expresiones evaluables.