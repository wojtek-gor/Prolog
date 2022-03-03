lubi(jan, tatry).
lubi(jan, beskidy).
lubi(jerzy, beskidy).
lubi(jerzy, bieszczady).
lubi(adam, sudety).
lubi(justyna, bieszczady).
bratnia_dusza(X,Y):-lubi(X,G),lubi(Y,G),X\==Y.
%X\==Y X ró¿ne od Y
% program ma 7 klauzul
% program ma 2 definicje relacji
% pierwsze 6 to fakty
% mamy 1 regu³ê
/*
?- lubi(jerzy,sudety).
false.

?- lubi(jan,X).
X = tatry ;
X = beskidy.

?- lubi(X,bieszczady).
X = jerzy ;
X = justyna.

?- bratnia_dusza(jan,_).
true.

?- bratnia_dusza(justyna,X).
X = jerzy ;
false.

?- bratnia_dusza(X,Y).
X = jan,
Y = jerzy ;
X = jerzy,
Y = jan ;
X = jerzy,
Y = justyna ;
X = justyna,
Y = jerzy ;
false.

*/
