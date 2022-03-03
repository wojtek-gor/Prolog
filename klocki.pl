% program klocki_1
% na(X,Y)
% opis: spe³niony, gdy klocek X le¿y na klockuY
na(c,a).
na(c,b).
na(d,c).
% 3 klauzule
pod(X,Y):-na(Y,X).
% regó³a: jeœli Y le¿y na X to znaczy ¿e X jest pod Y
miedzy(X,Y,Z):-na(Y,X),na(X,Z).
miedzy(X,Y,Z):-na(Z,X),na(X,Y).
% regó³a: klocek X le¿y miêdzy Y i Z
/*
Informacje o budowie:
program sk³ada siê z 6 klauzul
Program zawiera 3 definicjê relacji
*/

% ?- na(d,c).
%true

% ?- na(c,a).
% true enter
% b³¹d

% ?- na(c,a).
% true;
% false.

% ?- na(X,c).
% jaki klocek le¿y na c
% X = d.

% ?- na(c,X).
% na jakim klocku le¿y c
% X = a;
% X = b.
% klocek c le¿y na a i b

% ?- na(X,Y).
% X=c,
% Y=a;
% X=c,
% Y=b;
% X=d,
% Y=c.
% pary klocków, takich ¿e X le¿y na Y.
% ?- na(_,c).
% czy istnieje klocek le¿¹cy na c?
% true.

% ?- pod(a,c).
% true;
% false.
/*
?- miedzy(c,d,X).
X = a ;
X = b ;
false.
*/
/*
?- miedzy(c,X,Y).
X = d,
Y = a ;
X = d,
Y = b ;
X = a,
Y = d ;
X = b,
Y = d.
Miêdzy jakimi klockami le¿y c
*/
/*
?- miedzy(a,_,_).
czy klocek a le¿y miêdzy jakimiœ klockami
false.
W oparciu o znane dane nie mo¿na 
powiedzieæ, ¿e klocek a le¿y miêdzy
jakimiœ klockami

*/






