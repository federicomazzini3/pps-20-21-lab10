% search(Elem, List)
search(X, [X|_]). %search is OK if the element X is the head of the list
search(X, [_|Xs]) :- search(X, Xs). %search is OK if the element X occurs in the tail Xs


