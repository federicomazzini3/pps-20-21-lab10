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