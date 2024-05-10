%Hommes
homme(andre).
homme(bernard).
homme(babar).
homme(clement).
homme(dudulle).
homme(damien).
homme(baptiste).
homme(cedric).
homme(didier).
homme(dagobert).
%Femmes
femme(augustine).
femme(becassine).
femme(brigitte).
femme(chantal).
femme(celestine).
femme(caroline).
femme(charlotte).
femme(daniela).
femme(dominique).
%Enfants
enfant(bernard,andre). enfant(bernard,augustine).
enfant(babar,andre). enfant(babar,augustine).
enfant(brigitte,andre). enfant(brigitte,augustine).
enfant(clement,bernard). enfant(clement,becassine).
enfant(celestine,babar).
enfant(caroline,baptiste). enfant(caroline,brigitte).
enfant(cedric,baptiste). enfant(cedric,brigitte).
enfant(dudulle,clement). enfant(dudulle,chantal).
enfant(damien,clement). enfant(damien,chantal).
enfant(daniela,clement). enfant(daniela,chantal).
enfant(didier,cedric). enfant(didier,charlotte).
enfant(dagobert,cedric). enfant(dagobert,charlotte).
enfant(dominique,cedric). enfant(dominique,charlotte).


%Relations_parentales
parent(andre, bernard).
parent(andre, babar).
parent(andre, brigitte).
parent(augustine, bernard).
parent(augustine, babar).
parent(augustine, brigitte).
parent(bernard, clement).
parent(becassine, clement).
parent(babar, celestine).
parent(baptiste, caroline).
parent(brigitte, caroline).
parent(baptiste, cedric).
parent(brigitte, cedric).
parent(clement, dudulle).
parent(clement, damien).
parent(clement, daniela).
parent(chantal, dudulle).
parent(chantal, damien).
parent(chantal, daniela).
parent(cedric, didier).
parent(cedric, dagobert).
parent(cedric, dominique).
parent(charlotte, didier).
parent(charlotte, dagobert).
parent(charlotte, dominique).

%Petit_enfants
petit_enfant(A,C):-enfant(A,B),enfant(B,C).

%Fils
fils(A,B):-enfant(A,B),homme(A).

%Fille
fille(A,B):-enfant(A,B),femme(A).

%Petit_fils
petit_fils(A,B):-petit_enfant(A,B),homme(A).

%Petite_Filles
petite_fille(A,B):-petit-enfant(A,B),femme(A).

%Freres
frere(A,B):-enfant(A,Y),enfant(B,Y),homme(A),homme(B).

%Soeurs
soeur(A,B):-enfant(A,Y),enfant(B,Y),femme(A),femme(B).

%Frere_et_soeurs
frere_et_soeur(A,B):-enfant(A,Y),enfant(B,Y),A\==B.

%Freres_ou_soeurs
frere_ou_soeur(A,B):-enfant(A,Y),enfant(B,Y).

%Parents
parent(A,B):-enfant(B,A).

%Peres
pere(A,B):-parent(A,B),homme(A).

%Meres
mere(A,B):-parent(A,B),femme(A).

%Grand_Parents
grand_parent(A,C):-parent(A,B),parent(B,C).

%Grand_Peres
grand_pere(A,C):-grand_parent(A,C),homme(A).

%Grand_Meres
grand_mere(A,C):-grand_parent(A,C),femme(A). 

%Cousin_ou_cousine
cousin_ou_cousine(A,B):-parent(C,A),parent(D,B),frere_et_soeur(C,D).

%Cousin_et_cousine
cousin_et_cousine(A,B):-cousin_ou_cousine(A,B),A\==B.

%Cousins
cousin(A,B):-cousin_ou_cousine(A,B),homme(A),homme(B).

%Cousines
cousine(A,B):-cousin_ou_cousine(A,B),femme(A),femme(B).

%Oncle_ou_tante
oncle_ou_tante(A,B):-enfant(B,C),frere_ou_soeur(A,C).

%Oncles
oncle(A,B):-oncle_ou_tante(A,B),homme(A).

%Tantes
tante(A,B):-oncle_ou_tante(A,B),femme(A).

