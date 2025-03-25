X=42 unifica
42=X unifica 
quiere(ana, X) = quiere(Y,pedro) unifica Y=ana, X=pedro
X=f(X), no unifica, pero hay que comprobar con ocurrs check, prolog no lo hace por defecto, X= f(f(f(f(f ...))))
S(X, f(X)) = S(f(Z), Z) no unifica ocurrs check, X=f(Z), Z=f(X). X= f(f(X))