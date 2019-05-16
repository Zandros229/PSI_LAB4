mezczyzna(franciszek).
mezczyzna(jan).
mezczyzna(bogdan).
mezczyzna(krzysztof).
mezczyzna(wojciech).
mezczyzna(robert).
kobieta(wanda).
kobieta(maria).
kobieta(anna).
kobieta(ewa).
kobieta(zofia).
kobieta(katarzyna).
malzenstwo(jan,maria).
malzenstwo(bogdan,anna).
malzenstwo(wojciech,zofia).
rodzic(maria,franciszek).
rodzic(bogdan,wanda).
rodzic(krzysztof,jan).
rodzic(krzysztof,maria).
rodzic(wojciech,jan).
rodzic(wojciech,maria).
rodzic(zofia,bogdan).
rodzic(zofia,anna).
rodzic(ewa,bogdan).
rodzic(ewa,anna).
rodzic(katarzyna,wojciech).
rodzic(katarzyna,zofia).
rodzic(robert,wojciech).
rodzic(robert,zofia).
brat(X,Z):-rodzic(X,Y),rodzic(Z,Y),mezczyzna(Z),X\=Z,mezczyzna(X).
siostra(X,Z):-rodzic(X,Y),rodzic(Z,Y),kobieta(Z),X\=Z,kobieta(X).
matka(X,Y):-rodzic(X,Y),kobieta(Y).
ojciec(X,Y):-rodzic(X,Y),mezczyzna(Y).
syn(X,Y):-rodzic(X,Y),mezczyzna(X).
corka(X,Y):-rodzic(X,Y),kobieta(X).
babcia(X,Y):-rodzic(X,Z),rodzic(Z,Y),kobieta(Y).
dziadek(X,Y):-rodzic(X,Z),rodzic(Z,Y),mezczyzna(Y).
prababcia(X,Y):-rodzic(X,Z),rodzic(Z,V),rodzic(V,Y),kobieta(Y).
pradziadek(X,Y):-rodzic(X,Z),rodzic(Z,V),rodzic(V,Y),mezczyzna(Y).
przodek(X,Y):-rodzic(X,Y);(babcia(X,Y);dziadek(X,Y));(prababcia(X,Y);pradziadek(X,Y)).
potomek(X,Y):-rodzic(Y,X);(babcia(Y,X);dziadek(Y,X));(prababcia(Y,X);pradziadek(Y,X)).
madzieci(X):-syn(_,X);corka(_,X).
czydzidek(X):-dziadek(_,X).
wujek(X,Y):-rodzic(X,Z),brat(Z,Y).
ciocia(X,Y):-rodzic(X,Z),siostra(Z,Y).

















