search(X, [X|_]). %search ok se X è in testa
search(X, [_|Xs]) :- search(X, Xs). %search ok se x è nella coda  

search_anytwo(X, [X|Xs]) :- search(X,Xs). %search_anytwo ok se x compare una volta nella testa e una volta nella coda
search_anytwo(X, [_|Xs]) :- search_anytwo(X,Xs). %search_anytwo ok se x compare due volte nella code

