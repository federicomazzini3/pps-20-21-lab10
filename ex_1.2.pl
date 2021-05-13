% search2(Elem, List)
% looks for two consecutive occurrences of Elem
search2(X, [X,X|_]).
search2(X, [_|Xs]):- search2(X,Xs). % only change the base case, this case is the same

% – search2(a,[b,c,a,a,d,e,a,a,g,h]). -> yes 2 solution?
% – search2(a,[b,c,a,a,a,d,e]). -> yes 2solutions?
% – search2(X,[b,c,a,a,d,d,e]). -> yes 2 solutions, for a and d
% – search2(a,L). -> yes multiple solutions
% – search2(a,[_,_,a,_,a,_]). ->  yes multiple