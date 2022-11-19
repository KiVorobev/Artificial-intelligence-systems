% genders
male(yaroslav).
male(alexander).
male(maxim).
male(dmitry).
male(anton).
male(kirill).
male(oleg).
male(ivan).
male(egor).
male(andrew).
male(michael).

female(kira).
female(victoria).
female(alla).
female(anna).
female(maria).
female(julia).
female(valeria).
female(elizabeth).
female(elena).
female(veronika).

% parents
parent(anna, oleg).
parent(dmitry, oleg).
parent(alexander, anna).
parent(victoria, anna).
parent(maxim, dmitry).
parent(alla, dmitry).
parent(dmitry, kirill).
parent(anna, kirill).
parent(igor, nikita).
parent(egor, ivan).
parent(maria, ivan).
parent(olga, nikita).
parent(alexandra, alexei).
parent(fillip, alexei).
parent(kirill, elizabeth).
parent(valeria, elizabeth).
parent(anton, valeria).
parent(julia, valeria).
parent(anna, maria).
parent(yaroslav, victoria).
parent(kira, victoria).
parent(nikolay, anastasia).
parent(natalia, anastasia).
parent(dmitry, maria).
parent(andrew, egor).
parent(veronika, egor).
parent(elena, andrew).
parent(michael, veronika).

%spouses
spouse(anna, dmitry).
spouse(alexander, victoria).
spouse(maxim, alla).
spouse(igor, olga).
spouse(egor, maria).
spouse(alexandra, fillip).
spouse(kirill, valeria).
spouse(julia, anton).
spouse(nikolay, natalia).
spouse(veronika, andrew).
                
% rules
spouse(X, Y) :- spouse(Y, X), not(X=Y).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), not(X=Y).
uncle(X, Y) :- parent(Z, Y), sibling(X, Z), male(X).
aunt(X, Y) :- parent(Z, Y), sibling(X, Z), female(X).
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
son(X, Y) :- parent(Y, X), male(X).
daughter(X, Y) :- parent(Y, X), female(X).
mother_in_law(X, Y) :- spouse(Y, Z), mother(X, Z).
father_in_law(X, Y) :- spouse(Y, Z), father(X, Z).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X). 