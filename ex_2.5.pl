% max(List,Max)
% Max is the biggest element in List
% Suppose the list has at least one element

%max(List,Max,TempMax)

max([X|Xs], M) :- max(Xs, X, M).
max([], T, M) :- M is T.
max([X|Xs],T,M) :- X > T,
	  	   max(Xs,X,M).
max([X|Xs],T,M) :- max(Xs,T,M).
