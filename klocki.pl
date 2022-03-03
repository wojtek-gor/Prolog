% program klocki_1
% na(X,Y)
% opis: spe�niony, gdy klocek X le�y na klockuY
na(c,a).
na(c,b).
na(d,c).
pod(X,Y):-na(Y,X).
/*
Informacje o budowie:
program sk�ada si� z 3 klauzul
Program zawiera 1 definicj� relacji
*/

% ?- na(d,c).
%true

% ?- na(c,a).
% true enter
% b��d

% ?- na(c,a).
% true;
% false.

% ?- na(X,c).
% jaki klocek le�y na c
% X = d.

% ?- na(c,X).
% na jakim klocku le�y c
% X = a;
% X = b.
% klocek c le�y na a i b

% ?- na(X,Y).
% X=c,
% Y=a;
% X=c,
% Y=b;
% X=d,
% Y=c.
% pary klock�w, takich �e X le�y na Y.
% ?- na(_,c).
% czy istnieje klocek le��cy na c?
% true.






