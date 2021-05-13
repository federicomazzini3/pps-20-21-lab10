% all_bigger(List1,List2)
% all elements in List1 are bigger than those in List2, 1 by 1 
% example: all_bigger([10,20,30,40],[9,19,29,39]).

all_bigger([X],[Y]) :- X > Y. %ok se la testa della prima lista > della seconda
all_bigger([X|Xs],[Y|Ys]):- X > Y, %ok se la testa della prima lista > della seconda
			    all_bigger(Xs,Ys). % e se lo stesso è vero anche sulla coda 

