search_two(X, [X,Y,X|_]).
search_two(X, [_|Xs]):- search_two(X,Xs).

% - search_two(a,[b,c,a,a,d,e]). -> no
% – search_two(a,[b,c,a,d,a,d,e]). -> yes