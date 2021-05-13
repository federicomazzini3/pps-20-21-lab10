% max(List,Max)
% Max is the biggest element in List
% Suppose the list has at least one element

%max(List,TempMax,Max)

max([X|Xs], M) :- max(Xs, X, M). %tempMax assume il valore della testa
max([], T, M) :- M is T. %ok se lista vuota e M = T 
max([X|Xs],T,M) :- X > T, %ok se X > TempMax
	  	   max(Xs,X,M). %esploro la coda della lista con tempMax aggiornato
max([_|Xs],T,M) :- max(Xs,T,M). %esploro la coda della lista con tempMax non aggiornato

%max([10,24,1013,4323,2,3,4,5,6,2,2,1,4,5,56],X) -> X = 4323