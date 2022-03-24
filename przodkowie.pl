%rodzic(X,Y)-gdy x jest rodzicem Y
%przodek(X,Y)-gdy x jest przodkiem y

rodzic(ania,jacek).
rodzic(ania,basia).
rodzic(jan,jacek).
rodzic(jan,basia).
rodzic(stefan,jan).
rodzic(maria,ania).
rodzic(borys,ania).
przodek(X,Y):-rodzic(X,Y).
przodek(X,Y):-rodzic(X,Z),przodek(Z,Y).

/*
?- przodek(borys,X).
X = ania ;
X = jacek ;
X = basia ;
false.

?- przodek(jan,X).
X = jacek ;
X = basia ;
false.

?- przodek(X,jacek).
X = ania ;
X = jan ;
X = stefan ;
X = maria ;
X = borys ;
false.

*/
