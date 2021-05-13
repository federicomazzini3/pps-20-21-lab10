%3.1
% same(List1,List2)
% are the two lists exactly the same?
same([],[]). 
same([X|Xs],[X|Ys]):- same(Xs,Ys).




%3.2
% all_bigger(List1,List2)
% all elements in List1 are bigger than those in List2, 1 by 1 
% example: all_bigger([10,20,30,40],[9,19,29,39]).

all_bigger([X],[Y]) :- X > Y. %ok se la testa della prima lista > della seconda
all_bigger([X|Xs],[Y|Ys]):- X > Y, %ok se la testa della prima lista > della seconda
			    all_bigger(Xs,Ys). % e se lo stesso è vero anche sulla coda


 

%3.3
% sublist(List1,List2)
% List1 should contain elements all also in List2 
% example: sublist([1,2],[5,3,2,1]).

sublist([],List2). %ok se lista 1 è vuota
sublist([X|Xs],List2) :- search(X,List2), %ok se la testa della prima lista è nella seconda lista
			 sublist(Xs,List2). %ok se la coda della prima lista è nella seconda lista


% search(Elem, List)
search(X, [X|_]). %search is OK if the element X is the head of the list
search(X, [_|Xs]) :- search(X, Xs). %search is OK if the element X occurs in the tail Xs