

:- dynamic attends/2.

attends(476, im218).
attends(478, im218).
attends(479, im218).
attends(481, im218).
attends(482, im218).
attends(483, im218).
attends(484, im218).
attends(485, im218).
attends(487, im218).
attends(488, im218).
attends(489, im218).
attends(490, im218).
attends(491, im218).
attends(492, im218).
attends(494, im218).
attends(495, im218).
attends(496, im218).
attends(497, im218).
attends(498, im218).
attends(500, im218).
attends(501, im218).
attends(505, im218).
attends(506, im218).
attends(507, im218).
attends(508, im218).
attends(510, im218).
attends(512, im218).
attends(514, im218).
attends(517, im218).
attends(518, im218).
attends(479, im217).
attends(481, im217).
attends(486, im217).
attends(493, im217).
attends(494, im217).
attends(495, im217).
attends(497, im217).
attends(499, im217).
attends(502, im217).
attends(503, im217).
attends(504, im217).
attends(520, im217).
attends(507, im217).
attends(509, im217).
attends(512, im217).
attends(513, im217).
attends(514, im217).
attends(516, im217).
attends(476, im204).
attends(478, im204).
attends(482, im204).
attends(485, im204).
attends(486, im204).
attends(487, im204).
attends(488, im204).
attends(489, im204).
attends(490, im204).
attends(491, im204).
attends(492, im204).
attends(493, im204).
attends(494, im204).
attends(496, im204).
attends(498, im204).
attends(499, im204).
attends(500, im204).
attends(501, im204).
attends(502, im204).
attends(503, im204).
attends(505, im204).
attends(520, im204).
attends(508, im204).
attends(509, im204).
attends(510, im204).
attends(512, im204).
attends(513, im204).
attends(514, im204).
attends(515, im204).
attends(516, im204).
attends(517, im204).
attends(518, im204).
attends(479, im210).
attends(480, im210).
attends(481, im210).
attends(483, im210).
attends(484, im210).
attends(491, im210).
attends(497, im210).
attends(508, im210).
attends(513, im210).
attends(515, im210).
attends(517, im210).
attends(476, im209).
attends(478, im209).
attends(480, im209).
attends(481, im209).
attends(482, im209).
attends(484, im209).
attends(485, im209).
attends(487, im209).
attends(488, im209).
attends(489, im209).
attends(490, im209).
attends(492, im209).
attends(493, im209).
attends(495, im209).
attends(496, im209).
attends(497, im209).
attends(498, im209).
attends(499, im209).
attends(500, im209).
attends(504, im209).
attends(506, im209).
attends(515, im209).
attends(516, im209).
attends(518, im209).
attends(476, im216).
attends(478, im216).
attends(484, im216).
attends(487, im216).
attends(491, im216).
attends(492, im216).
attends(493, im216).
attends(496, im216).
attends(498, im216).
attends(501, im216).
attends(502, im216).
attends(504, im216).
attends(505, im216).
attends(507, im216).
attends(509, im216).
attends(512, im216).
attends(513, im216).
attends(514, im216).
attends(515, im216).
attends(479, im214).
attends(480, im214).
attends(482, im214).
attends(483, im214).
attends(485, im214).
attends(486, im214).
attends(488, im214).
attends(489, im214).
attends(490, im214).
attends(494, im214).
attends(495, im214).
attends(499, im214).
attends(500, im214).
attends(503, im214).
attends(504, im214).
attends(505, im214).
attends(506, im214).
attends(520, im214).
attends(507, im214).
attends(508, im214).
attends(510, im214).
attends(516, im214).
attends(517, im214).
attends(518, im214).
attends(480, im212).
attends(483, im212).
attends(486, im212).
attends(501, im212).
attends(502, im212).
attends(503, im212).
attends(506, im212).
attends(520, im212).
attends(509, im212).
attends(510, im212).



delete(X,L1,L2):-append(L0,[X|L3],L1),append(L0,L3,L2).

%� �������  ���������� �� ������ ��� �� �������� ���� ������
makeSet([],[]).
makeSet([X|Tail],[X|OUT]):-notMember(Tail,X),makeSet(Tail,OUT).
makeSet([X|Tail],OUT):-member(Tail,X),makeSet(Tail,OUT).

%������� �� ��� �������� ��� ����� ����� ��� ������
notMember([],_).
notMember([H|List],X):- H \= X,notMember(List,X).

%������� �� ��� �������� ����� ����� ��� ������
member(List,X):-append(_L1,[X|_L2],List).









%%%%%%%%%%%%%%%%%%%%%%%shedule/3

schedule(A,B,C):-listOfCourses(Final),permutations(Final,Sheduling),makeWeek(A,Sheduling,Rest),makeWeek(B,Rest,C).

%o ������� ���������� �� ������ ��� ���������
listOfCourses(Final):-findall(Y, attends(_, Y), Xs),makeSet(Xs,Final),!.

%���� �� ������� ���������� ���� ������ ���������� �� ���� �� ����������
permutations([],[]).
permutations(L1,[X|T]):-delete(X,L1,L2),permutations(L2,T).

% ���������� �� �������� ���� ���������(���� �������� ���� 3 ��������
% ����� ��� ��� ��������� ��� ���� 2
makeWeek([A,B,C],[A,B,C|R],R).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%shedule_errors/4

% ���������� ���� �������������� ������� ���� ��������� ��� ������ ����
% ��������(���� ������� ����� 4 �������� ��� ������ ��� ������� ���
% "�������������" ������.)
schedule_errors(A,B,C,E):-evaluate(A,EA),evaluate(B,EB),evaluate(C,EC), E is (EA+EB+EC),!.

% ���������� ��� ������ ��� "�������������"
% ������� �� ��� ��������

evaluate(Week,E):-weekError(Week,ListOfStudents),dublicateCount(ListOfStudents,E,0).

% ��� ��������� ���������� ��� ���������� ��� ����� �� ���� ������� ���
% ������ ��� ����������� ������ ���� ���� �������� (�� ��� ����
% ������ �� ������� ���� ����� ���������� ���� ���� ��������)
weekError([],[]).
weekError([Subject|Weekly],R):- findall(Y,attends(Y,Subject),ListOfStudents),weekError(Weekly,Tail),append(ListOfStudents,Tail,R).

% ���������� ���� ��� ����� �������� ����� ����� ���� ���� �����
% ListOfStudents.
dublicateCount([],S,S).
dublicateCount([X|L],E,S):-checkForTriple(X,L,0,C),Next is C +  S,dublicateCount(L,E,Next).



%������� �� ��� �������� ����� 3 ����� ���� ���� �����.
checkForTriple(X,L,S,0):-S\=2,notMember(L,X).%�� �� ������ ����� ������� ��� 2 ��� �� �������� ��� ������� ���� ����� ���������� 0.
checkForTriple(_,_,2,1).%�� �� ������ ������ 2 ��������� 1 (������� ���� "�������������" �������)
checkForTriple(X,L,S,C):-member(L,X),deleteOne(X,L,L1),Counter is S + 1,checkForTriple(X,L1,Counter,C),!.%�� � ������� ������� ���� ��� ���� ���� ����� �������� ��� ��� ����� ��� �� ������ ��������� (Counter)





%��������� ���� ��� ����� ������� ��� � ���� �����
deleteOne(X,[X|L],L).
deleteOne(X,[Y|L],L1):-X\=Y,delete(X,L,L1).




%��������� ���� �������� ��� ���������
deleteALL(_,[],[]).
deleteALL(X,[X|L],Result):-deleteALL(X,L,Result).
deleteALL(X,[Y|L],[Y|Result]):-X\=Y,deleteALL(X,L,Result).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% minimal_schedule_errors/4
%���������� �� �,�,C,E �� ���� ���������� ��������������� ��������.
% ������� �� ��������� ���� ��� List(��� ����� �� ��� ������ ���
% �������������� ���� ������������)
%���� �������� ������� �� ����������� ���
% ������� �� �������� ����� ��� ������ ���� ��� schedule_errors/4.
minimal_schedule_errors(A,B,C,E):-listOfErrors(List,S),minOfList(List,E),member(S,[A,B,C]),schedule_errors(A,B,C,E).






% ���������� ��� ����� �� ��� ������ ��� �������������� ����
% ������������ (L) ��� ��� ����� ���� ��� ������� ������������ (S).
listOfErrors(L,S):-findall([AT,BT,CT],schedule(AT,BT,CT),S),errorOfAll(S,L).


% ������� ��� ����� �� ����������� ��� ������ ��� ������ ���
% �������������� ��� ���� ���������.
errorOfAll([],[]).
errorOfAll([[A,B,C]|Tail],[X|Y]):-schedule_errors(A,B,C,X),errorOfAll(Tail,Y).


%���������� ������� ��� ���������� ��������� ���� ������
minOfList([0|_],0):-!.
minOfList([X],X):-!.
minOfList([A,B|Rest],M):-min(A,B,Z),minOfList([Z|Rest],M).
min(A,B,A):-A<B.
min(A,B,B):-B=<A.


%%%%%%%%%%%%%%%%%%%%%%%%%%score_schedule/4
%�������� �� ���� ���� ���������
score_schedule(A,B,C,S):-scoreOftheWeek(A,SA),scoreOftheWeek(B,SB),scoreOftheWeek(C,SC),schedule_errors_helper([A,B,C],E),S is SA+SB+SC-7*E.

%���������� ���� ��������������� ������� ��� ���� ��������
schedule_errors_helper([],0).
schedule_errors_helper([H|Tail],E):-schedule_errors(H,[],[],E1),schedule_errors_helper(Tail,E2),E is E1+E2.

%���������� ��� ������ ��� ������� ��� ������� �� ����
%��������� ��� �������������� �� �� ����� ��� ����������.

scoreOftheWeek([A,B],S):-
bestSenario([A,B],BestS),%BestS=����� ������� �� ��� ������ ���� ���� �������� (���� ����� 7)
length1(BestS,S7),
findall(X,(attends(X,A),attends(X,B)),NoBreak),%��break=����� �� ������� ��� ������ 2 �������� ���� ��� ��������(���� ����� 1)
length1(NoBreak,S1),
S is S1+S7*7,!.


scoreOftheWeek(L,S):-
badSenario(L,BetterS),%BetterS=����� ������� ��� ������ 2 ������ ����� ���� ���� ���� ��������
length1(BetterS,S1),
normalSenario(L,Ns),%�s =����� ������� ��� ������ ��� �������� �� ���� ���������(���� ����� 3)
length1(Ns,S3),
bestSenario(L,Bests),%Bests=����� ��� ������� ��� ������ ���� ��� ������ ���� ���� ��������
length1(Bests,S7),S is S1*1+S3*3+S7*7.


% ����� ��� ����� ��� ������� ��� ������ 2 �������� ���� ���� ��������
% ����� ����
badSenario([A,B,C],BS):-findall(X,(check(X,[A,B],C);check(X,[B,C],A)),BS).
check(X,[SUB1,SUB2],Empty):-attends(X,SUB1),attends(X,SUB2),not(attends(X,Empty)).


% ���������� ����� ������� ��� ������ 2 �������� �� ���� ���������.
normalSenario([A,B,C],NormalSenario):-findall(Y,(attends(Y,A),attends(Y,C),not(attends(Y,B))),NormalSenario).


% ���������� ��� ����� �� ���� ������� ��� ������ ��� ������ ���� ����
% ��������
bestSenario(Subjects,BestSenario):-
findall(X,((member(Subjects,Z),attends(X,Z))),L1),
countSingles(L1,BestSenario),!.

% ���������� ��� ����� �� �� �������� ��� ����� �������� ���� ������
% �����
countSingles([],[]).
countSingles([X|Tail],[X|Y]):-notMember(Tail,X),countSingles(Tail,Y).
countSingles([X|Tail],Y):-member(Tail,X),deleteALL(X,Tail,Rest),countSingles(Rest,Y).


length1([],0).
length1([_H|T],S):-length(T,S1),S is S1+1.






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%maximum_score_schedule/5
%
%

% ������� �� ����������� �� ��������� ������ ������������� ������� ���
% �� ���������� ����
maximum_score_schedule(A,B,C,E,S):-listOfMinimalScored(ListScores),
maxList(ListScores,MaxElement),
MaxElement=[_,_,_,E,S],%����� ��� �� ����� �� ���������� �������� ��� ������ ������� �� E (������� "�������������") ��� S (score).
member(ListScores,[A,B,C,E,S]).%�������� ���� ����������� ��� ��� ����� ListScores ����� �� E,S ��� �� ��� ����������� ���������.

% ������������ �� ��� ����� �� ����������� ��� �������������� ��� ������
% ��� "�������������" ������� ���� �� �� score ����.
listOfMinimalScored(ListScores):-findall([A,B,C,E,S],(minimal_schedule_errors(A,B,C,E),
score_schedule(A,B,C,S)),ListScores).

%������� �� ��������� �� �� ���������� ����
maxList([Max],Max).
maxList([X,Y|Tail],Max):-max(X,Y,Z),maxList([Z|Tail],Max).

max([X1,X2,X3,X4,X5],[_,_,_,_,Y5],[X1,X2,X3,X4,X5]):-X5>=Y5.
max([_,_,_,_,X5],[Y1,Y2,Y3,Y4,Y5],[Y1,Y2,Y3,Y4,Y5]):-Y5>X5.


