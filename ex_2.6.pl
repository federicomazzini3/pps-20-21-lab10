% extremes(List,Max,Min)
% Max is the biggest element in List
% Min is the smallest element in List
% Suppose the list has at least one element

extremes([X|Xs], Max, Min) :- extremes(Xs,X,Max,X,Min). %rimanda a max(List,TempMax,Max)
extremes([],TMax,Max,TMin,Min) :- Max is TMax, Min is TMin.	 
extremes([X|Xs],TMax,Max,TMin,Min) :- X > TMax,	 
	  	   		      extremes(Xs,X,Max,TMin,Min).
extremes([X|Xs],TMax,Max,TMin,Min) :- X < TMin,	 
	  	   		      extremes(Xs,TMax,Max,X,Min).
extremes([X|Xs],TMax,Max,TMin,Min) :- extremes(Xs,TMax,Max,TMin,Min).	

