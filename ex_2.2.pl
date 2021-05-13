% size(List,Size)
% Size will contain the number of elements in List, 
% written using notation zero, s(zero), s(s(zero))..

size([],zero). %size ok se lista vuota è zero
size([_|T],s(N)) :- size(T,N). %size ok se size sulla coda della lista ha un s in più

%size([a,b,c], X). -> X = s(s(s(zero)))
%size([c], X). -> X = s(zero)
%size( L, s(s(s(zero)))). -> L = [_,_,_]