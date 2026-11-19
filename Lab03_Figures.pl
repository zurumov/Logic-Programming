# 1. a.	Write down all possible figure/2 Prolog facts for the 16 figures above. 
figure (1, middle(triangle, square)).
figure (2, middle(circle, triangle)).
figure (3, middle(square, circle)).
figure (4, middle(square, square)).
figure (5, middle(square, triangle)).
figure (6, middle(triangle, circle)).
figure (7, middle(circle, square)).
figure (8, middle(triangle, triangle)).
figure (9, bottom_left(triangle, square)).
figure (10, top_left(circle, circle)).
figure (11, bottom_right(circle, circle)).
figure (12, top_right(circle, circle)).
figure (13, top_left(square, square)).
figure (14, bottom_left(square, square)).
figure (15, top_right(square, square)).
figure (16, bottom_right(square, square)).

# b.	Write down all possible relation/3 Prolog facts for any relations you might think of.
relation(middle(X, Y), middle(Y, X), inverse).
relation(bottom_left(X, Y), bottom_right(Y, X), horizontally_symetric).
relation(top_left(X, Y), bottom_left(Y, X), vertically_symetric).
relation(top_left(X, Y), bottom_right(Y, X), diagonally_symetric).


# c.	Point out which are the predicates and which are the terms in all the above facts, creating a table of functors and corresponding arities.
# Predicates:
# figure/2
# relation/3

# Terms:
# 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16.
# square, triangle, circle.
# inverse, horizontally_symetric, vertically_symetric, diagonally_symetric.
# X, Y.
# middle(X, Y), bottom_left(X, Y), bottom_right(X, Y), top_left(X, Y), top_right(X, Y).



# d.	Write a Prolog program for a predicate analogy/4, which if called can solve the analogy problem. For example:
# ?- analogy(1,5,3,X).
# X=7
analogy(1, 5, 3, X):-
    figure(1, Shape1),
    figure(5, Shape5),
    figure(3, Shape3),
        relation(Shape1, Shape5, inverse),
        relation(Shape3, X, inverse),
    figure(X, Shape7).

