matka(maria,pawel).
matka(magda,ela).
ojciec(karol,pawel).
ojciec(piotr,ela).
rodzice(X,Y,marcin):-rodzice(X,Y,ela).
rodzice(X,Y,Z):-matka(X,Z),ojciec(Y,Z).
rodzice(X,Y,Z):-matka(Y,Z),ojciec(X,Z).
rodzenstwo(A,B):-rodzice(X,Y,A),rodzice(X,Y,B).
% 6 klauzul, 3 definicje matka, ojciec i rodzice,
%4 faktów i 1 regu³y 