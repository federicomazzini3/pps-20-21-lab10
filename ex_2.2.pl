size([],zero). %size ok se lista vuota è zero
size([_|T],s(N)) :- size(T,N). 

%size([a,b,c], X). -> X = s(s(s(zero)))
%size([c], X). -> X = s(zero)