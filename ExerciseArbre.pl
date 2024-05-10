%Hommes
homme(michel).
homme(victor).
homme(claude).
homme(daniel).
homme(vincent).
homme(thomas).
homme(pierre).
homme(mathis).

%Femmes
femme(elise).
femme(jeanne).
femme(chantal).
femme(christine).
femme(amélie).
femme(chloé).

%Parents
parent(michel, claude).
parent(elise, claude).
parent(michel, chantal).
parent(elise, chantal).
parent(michel, christine).
parent(elise, christine).
parent(victor, daniel).
parent(jeanne, daniel).
parent(victor, vincent).
parent(jeanne, vincent).
parent(claude, thomas).
parent(chantal, mathis).
parent(christine, pierre).
parent(daniel, amélie).
parent(daniel, chloé).

%RelationsFamiliales
enfant(A, B) :- parent(B, A).

fils(A, B) :- enfant(A, B), homme(A).

fille(A, B) :- enfant(A, B), femme(A).

petitEnfant(A, C) :- enfant(A, B), enfant(B, C).

petitFils(A, C) :- enfant(A, B), enfant(B, C), homme(A).

petitFille(A, C) :- enfant(A, B), enfant(B, C), femme(A).

grandParent(A, C) :- parent(A, B), parent(B, C).

grandPere(A, C) :- grandParent(A, C), homme(A).

grandMere(A, C) :- grandParent(A, C), femme(A).

frere(A,B):-parent(C,A), parent(C,B), homme(A), homme(B).

soeur(A,B):-parent(C,A), parent(C,B), femme(A), femme(B).

frereEtSoeur(A, B) :- parent(C, A), parent(C, B), A \== B.

frereOuSoeur(A, B) :- enfant(A, C), enfant(B, C).

cousinOuCousine(A, B) :- parent(C, A), parent(D, B), frereOuSoeur(C, D), A \== B.

cousin(A, B) :- cousinOuCousine(A, B), homme(A), homme(B).

cousine(A, B) :- cousinOuCousine(A, B), femme(A), femme(B).

oncleOuTante(A, B) :- enfant(B, C), frereOuSoeur(A, C).

oncle(A, B) :- oncleOuTante(A, B), homme(A).

tante(A, B) :- oncleOuTante(A, B), femme(A).

# A\==B : Cette partie de la règle assure que A et B sont des individus différents. Cela évite de considérer une personne comme son propre cousin ou cousine.

Qui sont les enfants de Michel ?
?- enfant(X, Michel).

Qui sont les fils de Victor ?
?- fils(X, Victor).


Qui sont les parents de Christine ?
?- parent(X, Christine).


Qui sont les cousins de Pierre ?
?- cousin(X, Pierre).


Qui sont les Parents de Chantal ?
?- parents(x, Chantal)
