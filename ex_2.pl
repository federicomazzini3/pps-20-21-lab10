%2.2
% size(List,Size)
% Size will contain the number of elements in List, 
% written using notation zero, s(zero), s(s(zero))..

size([],zero). %size ok se lista vuota è zero
size([_|T],s(N)) :- size(T,N). %size ok se size sulla coda della lista ha un s in più

%size([a,b,c], X). -> X = s(s(s(zero)))
%size([c], X). -> X = s(zero)
%size( L, s(s(s(zero)))). -> L = [_,_,_]




%2.3
% sum(List,Sum)

sum([],0). %ok se lista vuota e 0
sum([H|T],M) :- sum(T,N), M is N + H. %ok se la somma è il parziale più la testa

%sum([10,20],X) -> X = 30




%2.4
% average(List,Average)
% it uses average(List,Count,Sum,Average)
average(List,A) :- average(List,0,0,A). 
average([],C,S,A) :- A is S/C. 
average([X|Xs],C,S,A) :- C2 is C+1, 
			 S2 is S+X, 
			 average(Xs,C2,S2,A).

%average([3,4,3],A)




%2.5
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




%2.6
% extremes(List,Max,Min)
% Max is the biggest element in List
% Min is the smallest element in List
% Suppose the list has at least one element

%extremes(List,TempMax,Max,TempMin,Min)

extremes([X|Xs], Max, Min) :- extremes(Xs,X,Max,X,Min). %TempMax e TempMin assumono il valore della testa e rimanda a max(List,TempMax,Max)
extremes([],TMax,Max,TMin,Min) :- Max is TMax, Min is TMin. %ok se lista vuota e Max e Min assumono TMax e TMin  
extremes([X|Xs],TMax,Max,TMin,Min) :- X > TMax,	 %ok se X > TMax
	  	   		      extremes(Xs,X,Max,TMin,Min). %esploro la coda della lista con TMax aggiornato
extremes([X|Xs],TMax,Max,TMin,Min) :- X < TMin,	 %ok se X < TMin
	  	   		      extremes(Xs,TMax,Max,X,Min). %esploro la coda della lista con TMin aggiornato
extremes([_|Xs],TMax,Max,TMin,Min) :- extremes(Xs,TMax,Max,TMin,Min). %esploro la coda della lista con TMax e TMin non aggiornati

%extremes([10,24,1013,4323,2,3,4,5,6,2,2,1,4,5,56],X,Y) -> X = 4323, Y = 1


