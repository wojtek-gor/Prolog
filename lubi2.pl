% jarosz(X) - gdy X jest jaroszem
% niepal(X) - gdy X nie pali
% czytajacy(X) - gdy X lubi czytac
% sport(X) - gdy X jest sportowcem
% lubi(X,Y) - gdy X lubi Y
 

jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).
niepal(ola).
niepal(ewa).
niepal(jan).
czytajacy(ola).
czytajacy(iza).
czytajacy(piotr).
sport(ola).
sport(jan).
sport(piotr).
sport(pawel).

lubi(ola,X):-jarosz(X),sport(X).

lubi(ewa,X):-niepal(X),jarosz(X).

lubi(iza,X):-czytajacy(X).
lubi(iza,X):-sport(X),niepal(X).

lubi(jan,X):-sport(X).

lubi(piotr,X):-czytajacy(X).
lubi(piotr,X):-sport(X),jarosz(X).

lubi(pawel,X):-sport(X),jarosz(X),czytajacy(X).

/*
?- lubi(ola,X).
X = ola ;
X = jan ;
X = pawel.

?- lubi(ola,X),X\==ola.
X = jan ;
X = pawel.

?- lubi(jan,_).
true ;
true ;
true ;
true.

?- niepal(X),sport(X).
X = ola ;
X = jan.

?- czytajacy(X),jarosz(X).
X = ola ;
false.
?- lubi(X,Y),X\==Y.
X = ola,
Y = jan ;
X = ola,
Y = pawel ;
X = ewa,
Y = ola ;
X = ewa,
Y = jan ;
X = iza,
Y = ola ;
X = iza,
Y = piotr ;
X = iza,
Y = ola ;
X = iza,
Y = jan ;
X = jan,
Y = ola ;
X = jan,
Y = piotr ;
X = jan,
Y = pawel ;
X = piotr,
Y = ola ;
X = piotr,
Y = iza ;
X = piotr,
Y = ola ;
X = piotr,
Y = jan ;
X = piotr,
Y = pawel ;
X = pawel,
Y = ola ;
false.

?- lubi(X,Y),lubi(Y,X),X\==Y.
X = ola,
Y = jan ;
X = ola,
Y = pawel ;
X = iza,
Y = piotr ;
X = jan,
Y = ola ;
X = jan,
Y = piotr ;
X = piotr,
Y = iza ;
X = piotr,
Y = jan ;
X = pawel,
Y = ola ;
false.



*/
