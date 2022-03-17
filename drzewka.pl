ojciec(karol,jan).
ojciec(karol,adam).
dziecko(tomasz,jan).
dziecko(piotr,adam).
dziadek(karol,marek).
dziadek(X,Y):-ojciec(X,Z),dziecko(Y,Z).
%?-dziadek(X,piotr).

p(a,d).
p(X,Y):-q(X,Z),r(Z,Y).
q(a,b).
q(c,a).
r(a,d).
r(b,c).

%
% ?-p(X,d).
% ?-p(a,X).
/*
[trace]  ?-p(a,X).
   Call: (8) p(a, _2986) ? creep
   Exit: (8) p(a, d) ? creep
X = d ;
   Redo: (8) p(a, _2986) ? creep
   Call: (9) q(a, _3196) ? creep
   Exit: (9) q(a, b) ? creep
   Call: (9) r(b, _2986) ? creep
   Exit: (9) r(b, c) ? creep
   Exit: (8) p(a, c) ? creep
X = c.
*/
na(d,c).
na(c,a).
na(c,b).
na(a,e).
na(b,g).
nad(X,Y):-na(X,Y).
%koniec rekurencji
nad(X,Y):-na(X,Z),nad(Z,Y).
%definicja rekurencyjna
/*
?- nad(c,e).
true ;
false.

?- nad(d,X).
X = c ;
X = a ;
X = b ;
X = e ;
X = g ;
false.

?- nad(X,a).
X = c ;
X = d ;
false.

?- nad(c,_).
true ;
true ;
true ;
true ;
false.


[trace]  ?- nad(d,X).
   Call: (8) nad(d, _2986) ? creep
   Call: (9) na(d, _2986) ? creep
   Exit: (9) na(d, c) ? creep
   Exit: (8) nad(d, c) ? creep
X = c ;
   Redo: (8) nad(d, _2986) ? creep
   Call: (9) na(d, _3204) ? creep
   Exit: (9) na(d, c) ? creep
   Call: (9) nad(c, _2986) ? creep
   Call: (10) na(c, _2986) ? creep
   Exit: (10) na(c, a) ? creep
   Exit: (9) nad(c, a) ? creep
   Exit: (8) nad(d, a) ? creep
X = a ;
   Redo: (10) na(c, _2986) ? creep
   Exit: (10) na(c, b) ? creep
   Exit: (9) nad(c, b) ? creep
   Exit: (8) nad(d, b) ? creep
X = b ;
   Redo: (9) nad(c, _2986) ? creep
   Call: (10) na(c, _3204) ? creep
   Exit: (10) na(c, a) ? creep
   Call: (10) nad(a, _2986) ? creep
   Call: (11) na(a, _2986) ? creep
   Exit: (11) na(a, e) ? creep
   Exit: (10) nad(a, e) ? creep
   Exit: (9) nad(c, e) ? creep
   Exit: (8) nad(d, e) ? creep
X = e ;
   Redo: (10) nad(a, _2986) ? creep
   Call: (11) na(a, _3204) ? creep
   Exit: (11) na(a, e) ? creep
   Call: (11) nad(e, _2986) ? creep
   Call: (12) na(e, _2986) ? creep
   Fail: (12) na(e, _2986) ? creep
   Redo: (11) nad(e, _2986) ? creep
   Call: (12) na(e, _3204) ? creep
   Fail: (12) na(e, _3204) ? creep
   Fail: (11) nad(e, _2986) ? creep
   Fail: (10) nad(a, _2986) ? creep
   Redo: (10) na(c, _3204) ? creep
   Exit: (10) na(c, b) ? creep
   Call: (10) nad(b, _2986) ? creep
   Call: (11) na(b, _2986) ? creep
   Exit: (11) na(b, g) ? creep
   Exit: (10) nad(b, g) ? creep
   Exit: (9) nad(c, g) ? creep
   Exit: (8) nad(d, g) ? creep
X = g ;
   Redo: (10) nad(b, _2986) ? creep
   Call: (11) na(b, _3204) ? creep
   Exit: (11) na(b, g) ? creep
   Call: (11) nad(g, _2986) ? creep
   Call: (12) na(g, _2986) ? creep
   Fail: (12) na(g, _2986) ? creep
   Redo: (11) nad(g, _2986) ? creep
   Call: (12) na(g, _3204) ? creep
   Fail: (12) na(g, _3204) ? creep
   Fail: (11) nad(g, _2986) ? creep
   Fail: (10) nad(b, _2986) ? creep
   Fail: (9) nad(c, _2986) ? creep
   Fail: (8) nad(d, _2986) ? creep
false.
*/