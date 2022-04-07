%Uzgadnianie listy:
%[X|T],[a,f(b),c,d]

/*
X=a,T=[f(b),c,d]
Uda³o siê
[a,b],[X,Y|T]
X=a,Y=b,T=[]
Uda³o siê
[b],[X,Y|T]
X=b, Y=!!! - brak drugiego elementu
Nieuda³o siê
[a,[b,c]],[X|T]
X=a, T=[[b,c]]
Uda³o siê
[X,Y|T],[a,[b,c]]
X=a,Y=[b,c],T=[]
Uda³o siê

*/
/*
Kwadrat listy[l1,l2]
spe³niony gdy elementy listy l2 s¹ kwadratami elementów
listy l1. Lista l1 jest liczb¹ liczbow¹ ograniczenia.
l1 i l2 s¹ listami liczbowymi.

warunek koñca:
*/
kwadrat_listy([],[]).

% Cia³o rekurencji:
kwadrat_listy([H1|T1],[H2|T2]):-H2 is H1*H1,kwadrat_listy(T1,T2).

/*
podwojenie(l1,l2).
spe³nione gdy element listy l2 s¹ podwojonymi elementami listy l1,
np. l1[a,b], l2=[a,a,b,b]
*/
podwojenie([],[]).

podwojenie([H1|T1],[H1,H1|T2]):-podwojenie(T1,T2).

/*
lista_wieksza_o2(l1,l2)-
spe³nione gdy elementy listy l2 s¹ odpowiednimi elementami
list l1 powiêkszonymi o 2
*/
lista_wieksza_o2([],[]).
lista_wieksza_o2([Y|T1],[X|T2]):- X is Y+2,lista_wieksza_o2(T1,T2).

/*
lista_ele(l,n)
spe³nione gdy n jest list¹ elementów listy l
*/
liczba_ele([],0).
liczba_ele([H|T],N):-liczba_ele(T,K),N is K+1.


/*
konkat(L1,L2,L3)
spe³niona gdy l3 jest pol¹czeniem listy L1 i L2
*/
konkat([],L,L).

konkat([H1|T1],L2,[H1|T3]):-konkat(T1,L2,T3).


/*
odwrotna(l1,l2)
spe³nione gdy lista l2 jest odwóceniem listy l1

*/
odwrotna_lista([],[]).

odwrotna_lista([H|T1],L):-odwrotna_lista(T1,T2),konkat(T2,[H],L).

%predykaty
%spe³niony, gdy X jest dodatni

dodatni(X):-X>0.

%spe³niony gdy wszystkie elementy listy s¹ dodatnie

lista_dodatnia(L):-maplist(dodatni,L).

kwadrat(X,Y):-X*X is Y.

kwadrat_listy(X,Y):-maplist(kwadrat,X,Y).
% wiekszy od lista
wieksza(X,Y):- Y>X.
wiekszy_od_listy(X,Y):-maplist(wieksza(X),Y).

%wieksza lista[l1,l2]
wieksza_lista(X,Y):-maplist(wieksza,X,Y).

wieksza_5(X,Y):- Y is X+5.
wieksza_o_5(X,Y):-maplist(wieksza_5,X,Y).