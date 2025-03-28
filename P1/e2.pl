Unficación =/2

-> Dos términos unifican si son idénticos.
-> Si contienen variables no instanciadas, que se pueden instanciar para que queden idénticas

Proceso de Unficación:

-> Si son dos constantes, ambas deben ser iguales: a=a
-> Si una es una variable no instanciada, la instanció con el valor de la otra
-> Si son términos compuestos, tienen que tener mismo functor y número de argumentos, recursivamente unifico argumentos uno a uno

a) Análisis de unificaciones
i) X = juan.

    Válida.

    Resultado: X se instancia a juan.

ii) 42 = X.

    Válida.

    Resultado: X se instancia a 42.


iii) X = juan, 42 = X. No unifica

    Primero, X = juan da { X → juan }

    Luego, se intenta 42 = X, es decir, 42 = juan.

    Falla: porque 42 y juan son constantes diferentes.

iv) X = juan, X = Y. Unifica

    Con X = juan obtenemos { X → juan }

    Luego, X = Y obliga a que Y se instancie igual que X.

    Resultado: Ambos quedan instanciados a juan.


viii) g(f(X, Y), X, h(a)) = g(f(b, Z), W, h(Z)). unifica
    Dado que ambos términos tienen el mismo functor y aridad, se igualan cada uno de sus argumentos:

    Primer argumento:
    f(X, Y) = f(b, Z)
    → se obtiene: X = b y Y = Z.

    Segundo argumento:
    X = W
    → ya que X = b, se tiene W = b.

    Tercer argumento:
    h(a) = h(Z)
    → se obtiene: a = Z.
    Dado que Y = Z, también Y = a.

Resultado: { X → b, Y → a, Z → a, W → b }.



ix) g(f(X, Y), X, h(a)) = g(f(b, Z), W, h(X)). No unifica
    Se igualan los argumentos:

    f(X, Y) = f(b, Z) → X = b y Y = Z.

    X = W → W = b.

    h(a) = h(X) → a = X, pero X ya es b, por lo que se exige que a = b.

    Falla: a y b son constantes distintas.

x) X = f(X). Seudo

    Con occurs check (unificación lógica correcta): Falla, pues se generaría una definición cíclica.

    Sin occurs check (como suele suceder en Prolog): La unificación "sucede" y X se asocia a un término cíclico (un árbol racional infinito).

    Conclusión: Teóricamente inválida, pero Prolog (sin occurs check) la acepta.

xi) s(X, f(X)) = s(f(Z), Z). Seudo

    Se igualan los argumentos del functor s:

    Primer argumento: X = f(Z) → X se instancia a f(Z).

    Segundo argumento: f(X) = Z, pero sustituyendo X obtenemos f(f(Z)) = Z.

    Esto implica que Z debe ser igual a f(f(Z)), lo que genera un ciclo.

    Con occurs check: La unificación falla.

    Sin occurs check: Prolog la aceptaría generando una estructura cíclica.


v) padre(Z, juan) = padre(jorge, juan). Unifica


xii) a(f(Y), W, g(Z)) = a(X, X, V). unifica
    Igualamos los argumentos de a:

    f(Y) = X → X se instancia a f(Y).

    W = X → con X = f(Y), se tiene W = f(Y).

    g(Z) = V → V se instancia a g(Z).

    Resultado: { X → f(Y), W → f(Y), V → g(Z) }.


vi) quiere(ana, X) = quiere(Y, pedro). unifica
    Igualamos argumentos:

    ana = Y → Y se instancia a ana.

    X = pedro.

    Sustitución: { Y → ana, X → pedro }.
