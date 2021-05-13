% seqR(N,List)
% example: seqR(4,[4,3,2,1,0]).

seqR(0,[0]). %ok se N è 0 e l'unico elemento nella lista è zero
seqR(N,[N|T]):- N2 is N-1, seqR(N2,T). %ok se l'elemento è uguale alla testa della lista 
				       % e il suo decremento è uguale alla testa della coda
