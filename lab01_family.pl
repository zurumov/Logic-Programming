/*--------------------------------------------------------------
	LAB#1: Family Tree

	Patial Solution by P.Kefalas
--------------------------------------------------------------*/

/*--------------------------------------------------------------
parent/2: parent(+/-,+/-)
1st argument: the parent
2nd argument: the child
--------------------------------------------------------------*/

parent(kronos,demeter).
parent(kronos,hades).
parent(kronos,poseidon).
parent(kronos,zeus).

/*--------------------------------------------------------------
male/1: male(+/-)
Anyone who is male
--------------------------------------------------------------*/

male(kronos).
male(hades).
male(zeus).
male(poseidon).
male(ares).
male(apollo).
male(hermes).
male(dionysus).


/*--------------------------------------------------------------
female/1: female(+/-)
Anyone who is female
--------------------------------------------------------------*/
female(rhea).
female(hera).
female(demeter).
female(hestia).
female(persephone).
female(eileithyia).
female(hebe).
female(athena).
female(aphrodite).
female(artemis).


/*--------------------------------------------------------------
father/2: father(+/-,+/-)
1st argument: the father
2nd argument: the child
--------------------------------------------------------------*/
father(kronos,demeter).
father(kronos, zeus).
father(kronos, hera).
father(kronos, poseidon).
father(kronos, hades).
father(kronos, hestia).
father(zeus, persephone).
father(zeus, ares).
father(zeus, eileithyia).
father(zeus, hebe).

/* Short way */
father(x, y):-
parent(x, y),
male(x).

/*--------------------------------------------------------------
mother/2: mother(+/-,+/-)
1st argument: the mother
2nd argument: the child
--------------------------------------------------------------*/
mother(rhea,demeter).
mother(rhea, zeus).
mother(rhea, hera).
mother(rhea, poseidon).
mother(rhea, hades).
mother(rhea, hestia).
mother(demeter, persephone).
mother(hera, ares).
mother(hera, eileithyia).
mother(hera, hebe).

/* Short way */
mother(x, y):-
parent(x, y),
female(x).


/*--------------------------------------------------------------
sisters/2: sisters(+/-,+/-)
Any two females with the same parent are sisters.
Anyone is a sister of herself if the two variables are not
declared as different. Notice that two variables X and Y
with different names do not imply different values.
--------------------------------------------------------------*/
sisters(demeter, hera).
	female(demeter),
	female(hera),
	parent(kronos, demeter),
	parent(kronos, hera).

/* Short way */
sisters(x, y):-
	parent(z, x),
	parent(z, y),
	female(x),
	female(y),
	x =/ y

?-sisters(hera,hera)

/*--------------------------------------------------------------
step_sisters/2: step_sisters(+/-,+/-)
Any two females with only one common same parent.
--------------------------------------------------------------*/
step_sisters(athena, aphrodite).
	female(athena),
	female(aphrodite),
	parent(zeus, athena),
	parent(zeus, aphrodite).

/* Short way */
step_sisters(x, y):-
	parent(z, x),
	parent()

/*--------------------------------------------------------------
brothers/2: brothers(+/-,+/-)
Any two males with the same parent are brothers.
Anyone is a brother of himself if the two variables are not
declared as different. Notice that two variables X and Y
with different names do not imply different values.
--------------------------------------------------------------*/
brothers(poseidon, hades).
	male(poseidon),
	male(hades),
	parent()


/*--------------------------------------------------------------
step_brothers/2: step_brothers(+/-,+/-)
Any two females with only one common same parent.
--------------------------------------------------------------*/
step_brothers(apollo, hermes).
	male(apollo),
	male(hermes),
	parent(zeus, apollo),
	parent(zeus, aphrodite).
	(parent )
	(parent(p2, x), parent(p2, y), p1 =/ p2)


/*--------------------------------------------------------------
grandparent/2: grandparent(+/-,+/-)
1st argument: the grandparent
2nd argument: the grandchild
--------------------------------------------------------------*/


/*--------------------------------------------------------------
grandfather/2: grandfather(+/-,+/-)
1st argument: the grandfather
2nd argument: the grandchild
--------------------------------------------------------------*/

/*--------------------------------------------------------------
grandmother/2: grandmother(+/-,+/-)
1st argument: the grandmother
2nd argument: the grandchild
--------------------------------------------------------------*/

/*--------------------------------------------------------------
ancestor/2: ancestor(+/-,+/-)
1st argument: the ancestor
2nd argument: the descendant
A person's ancestor is:
- EITHER his/her parent
- OR his/her parent's ancestor
--------------------------------------------------------------*/











