% seqR2(N,List)
seqR2(0,[0]). %ok se il numero e l'unico elemento della lista sono 0
seqR2(X,List) :- last(List2,X,List), %ok se X è l'ultimo elemento di List (ottengo anche la sottolista senza ultimo elemento) 
		 X2 is X - 1, %vado sul penultimo elemento della lista
		 seqR2(X2,List2). %ok se è rispettato per gli elementi precedenti nella lista


%last(List1, N, List2)
last([], X,[X]). %ok se X è l'unico e anche ultimo elemento nella lista
last([H|T],X,[H|M]) :- last(T,X,M). 


%seqR2(4,[0,1,2,3,4]).
%last([1,2,3],5,[1,2,3,5]).
%last(L,X,[1,2,3,6]). -> L = [1,2,3], X = 6