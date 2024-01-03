Exercise 1.
Given a list L = [x1, x2,. . . , xn] of length n and a list of integers I = [i1, i2,. . . , ik], such that 1 ≤ i1 <i2 <. . . <ik ≤ n] we want to construct the list S = [xi1, xi2,. . . , xik] (ie the list exhausted by the elements of L, whose positions are indicated by the elements of I).
Write a program in Prolog that will perform the above construction. Specifically, define a pick predicate (L, I, S), which will be true if L is a list, I is a list of positive integers in genuinely ascending order, whose values do not exceed the length of L and S is the list consisting of the elements of L which are in the positions indicated by the elements of I.
Use the following questions to check:
| ?- pick([a,b,c,d,e,f,g,h],[1],S).
S = [a]
| ?- pick([a,b,c,d,e,f,g,h],[8],S).
S = [h]
| ?- pick([a,b,c,d,e,f,g,h],[9],S).
no
| ?- pick([a,b,c,d,e,f,g,h],[],S).
S = []
| ?- pick([a,b,c,d,e,f,g,h],[2,4,7],S).
S = [b,d,g]
| ?- pick([a,b,c,d,e,f,g,h],[4,1],S).
no
| ?- pick([a,b,c,d,e,f,g,h],[1,2,3,4,5,6,7,8],S).
S = [a,b,c,d,e,f,g,h]
| ?- pick([a,b,c,d,e,f,g,h],[6,7,8,9],S).
no
| ?- pick([a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z],[4,5,12,16,17,23,25],S).
S = [d,e,l,p,q,w,y]


Exercise 2.
In a domino-like game, a number of lists are given and the aim is to place these lists one after the other so that the last item in each list is the first item in the next one. Define a domino predicate (L) in Prolog, which will be true if L is a non-empty list of lists that can be placed in order with the constraint described above.
Use the following questions to check:
| ?- domino([]).
no
| ?- domino([[1,2,3]]).
yes
| ?- domino([[a,b,c],[c,b,a]]).
yes
| ?- domino([[1,2,1],[1,3,3,1],[1,4,4,1],[1,1],[1],[1,0,1],[1,9,0,1]]).
yes
| ?- domino([[>>>,===,<<<],[>>>],[<<<]]).
yes
| ?- domino([[a,b,c],[],[c,b,a]]).
no
| ?- domino([[3,3,2,1,4],[1,3,5,7,2],[4,3,3,2,5],[2,4,3,1,3]]).
yes
| ?- domino([[1,2],[1,3],[1],[2,1],[2,3],[2],[3,1],[3,2],[3]]).
yes
| ?- domino([[1,4],[2,6],[3,7],[4,2],[5,3],[6,9],[7,1],[8,5]]).
yes
| ?- domino([[1,2],[2,3],[2,8],[3,4],[3,5],[4,1],[5,1],[8,4],[8,5]]).
no
| ?- domino([[0,3],[1,6],[2,8],[3,7],[4,0],[5,9],[6,4],[7,1],[8,5],[9,2]]).
No

Instructions
•	To write the programs you should use the standard file Lab6.pro (available on the course website), in which for each sentence you ask to define in the following exercises, there is a rule that defines it so that it always returns the answer no. To answer the exercises, replace each of the above rules with an appropriate set of sentences that define the corresponding sentence. You should not modify the name of any category or the number of its arguments.

•	You can define as many auxiliary clauses as you want, which will be used to define the clauses you are asked to implement. Under no circumstances should you add other arguments to the categories requested.

•	If you use predefined adjectives or operators that are not mentioned in the course notes, the corresponding exercise will not be graded.

•	The correctness of the answers will be checked semi-automatically. Under no circumstances should the assessor need to intervene in the file you submit. Therefore you should consider the following:

1. Each of the accusations that you are asked to implement should have the specific name and the specific number of arguments described in the pronunciation of the respective exercise and that exists in the standard Lab6.pro file. If in an exercise the name or number of arguments does not match the one given in the recitation, the exercise will not be graded.

2. The file you submit should not contain syntax errors. If there are code snippets that contain syntax errors, then you need to correct or remove them before delivery. If the file you submit contains syntax errors, then the entire lab exercise will be reset.

3. The questions given at the end of each exercise should be answered. If any of the returned answers are incorrect, this will be taken into account in the scoring, however the exercise will be graded normally. However, if any of the above questions are not answered (eg stack overflow, endless calculation or some runtime error) then the score for the implementation of the corresponding charge will be zero.

4. When correcting the exercises, the assessors will not use questions that contain the auxiliary categories that you may have set. The use of auxiliary predicates should be made through the predicates you are asked to implement

