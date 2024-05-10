som(0,0).
som(N,X):- N>0,N1 is N-1, som(N1,X1),X is N+X1.


Voici une explication ligne par ligne :

som(0, 0).: C'est un fait de base qui stipule que la somme des entiers de 0 à 0 est égale à 0. Cela définit la base de la récursion.
som(N, X) :- N > 0, N1 is N - 1, som(N1, X1), X is N + X1. : C'est une règle qui décrit comment calculer la somme des entiers de 0 à N lorsque N est supérieur à 0. Voici comment cela fonctionne :
som(N, X): Cela signifie que la somme des entiers de 0 à N est X.
N > 0: Cette condition vérifie que N est strictement supérieur à 0.
N1 is N - 1: N1 est une variable qui stocke la valeur de N diminuée de 1.
som(N1, X1): Cela appelle récursivement le prédicat som avec N1 en tant que nouvel argument. Cela permet de calculer la somme des entiers de 0 à N1.
X is N + X1: X est la somme de N et de la somme des entiers de 0 à N1 (stockée dans X1).