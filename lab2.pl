pick(List1,List2,List):-
    pick(List1,List2,[],List).
pick(_,[],List,List).
pick(L,[H|T],L1,List):-
    Index is H-1,
    nth0(Index,L,Element),
    append(L1,[Element],L2),
    pick(L,T,L2,List).


domino(List):-
    permutation(List,L),
    nth0(0,L,E),
    nth0(0,E,H),
    domino1(L,H),!.
domino1([[H|_]],H).
domino1([H1|T],H):-
    nth0(0,H1,H),
    length(H1,Len),
    Last is Len-1,
    nth0(Last,H1,Ele),
    domino1(T,Ele).
