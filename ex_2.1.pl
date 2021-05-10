%2.1
% size(List, Size)
% Size will contain the number of elements in List
size([],0).
size([_|T],M) :- size(T,N), M is N+1.

%size([_,_,_,_,_,_,_,_,_,_], X) -> X = 10
%size([10,20,30], 3) -> yes
