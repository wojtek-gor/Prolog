/*
Definicja:
1) x jest wielomianem zmiennej x
    c - liczba jest wielomianem dowolnej zmiennej
2) jeœli w, w1, w2 s¹ wielomianami zm. x, to
    -w, w1+w2, w1-w2, w1*w2, w^n(n-liczba naturalna)
    s¹ wielomianami zmiennej x

wielomian(W,X)
spe³niony, gdy w jest wielomianem zmiennej x
o wspó³czynnikach liczbowych
def. rekurncyjna
*/
wielomian(X,X).
wielomian(C,_):-number(C).
wielomian(-W,X):-wielomian(W,X).
wielomian(W1+W2,X):-wielomian(W1,X),wielomian(W2,X).
wielomian(W1-W2,X):-wielomian(W1,X),wielomian(W2,X).
wielomian(W1*W2,X):-wielomian(W1,X),wielomian(W2,X).
wielomian(W^N,X):-integer(N),n>1,wielomian(W,X).

/*
Def:
1) st(X)=1
    st(C)=0, gdzie c-liczba
2) st(-W)=st(W).
    st(W1+W2)=st(W1-W2)=max(st(W1),st(W2)).
    st(W1*W2)=st(W1)+st(W2).
    st(W^N)=integer(N),N>1,st(W)*N.

st_wielomian(W,X,N).
gdy N jest stopniem wielomianu W
zmiennej X o wspó³czynnikach liczbowych
*/
st_wielomian(X,X,1).
st_wielomian(C,_,0):-number(C).
st_wielomian(-W,X,N):-st_wielomian(W,X,N).
st_wielomian(W1+W2,X,N):-st_wielomian(W1,X,N1),st_wielomian(W2,X,N2),N is max(N1,N2).
st_wielomian(W1-W2,X,N):-st_wielomian(W1,X,N1),st_wielomian(W2,X,N2),N is max(N1,N2).
st_wielomian(W1*W2,X,N):-st_wielomian(W1,X,N1),st_wielomian(W2,X,N2), N is N1+N2.
st_wielomian(W^Y,X,N):-st_wielomian(W,X,Z), integer(Y), Y>1, N is Y*Z.
