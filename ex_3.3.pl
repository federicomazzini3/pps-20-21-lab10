% sublist(List1,List2)
% List1 should contain elements all also in List2 
% example: sublist([1,2],[5,3,2,1]).

sublist([],List2). %ok se lista 1 è vuota
sublist([X|Xs],List2) :- search(X,List2), %ok se la testa della prima lista è nella seconda lista
			 sublist(Xs,List2). %ok se la coda della prima lista è nella seconda lista


% search(Elem, List)
search(X, [X|_]). %search is OK if the element X is the head of the list
search(X, [_|Xs]) :- search(X, Xs). %search is OK if the element X occurs in the tail Xs




