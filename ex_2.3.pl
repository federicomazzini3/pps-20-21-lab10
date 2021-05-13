% sum(List,Sum)

sum([],0). %ok se lista vuota e 0
sum([H|T],M) :- sum(T,N), M is N + H. %ok se la somma è il parziale più la testa

%sum([10,20],X) -> X = 30