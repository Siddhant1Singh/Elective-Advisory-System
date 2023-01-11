
imp:-
	consult("C:/Users/siddh/Assig.pl").

begin:-imp,
	write("================================================================================================================================================================="),nl,
	write("-----------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,nl,
	write("WELCOME TO THE COURSES ADVISORY SYSTEM.        :)"),nl,nl,
	write("================================================================================================================================================================="),nl,
	write("-----------------------------------------------------------------------------------------------------------------------------------------------------------------"),nl,nl,
	write("Here, we help you (B.Tech Student) in choosing your courses on based of your branch, pre-requisite and career plan. This is for 3rd and 4th year students. Please, help us in improving the system by giving your reviews."),nl,
	write("Enter your Name (if X is to be entered, enter like 'X'.): "),
	read(Nm),nl,writeln(Nm),
	menu1.



menu1:- menu2(ai);menu2(dbms);menu2(robotics).

showC2([],0).
showC2([H|T],N):- write(H),write("  "),showC2(T,N1),N is N1+1.


menu2(ai):- fld(ai),crs(ai),crs(ml),crs(nlp),writeln("You can take the courses: ."),showC2(['dl(Deep Learning cs122)', 'rl(Real Learning cs221)'],0).




menu2(dbms):- fld(dbms),crs(bigdata),crs(datastream),crs(datamining),writeln("You can take the courses: "),showC2(['dm(Data Manipulation cs132)', 'drw(Data in real World cs231)'],0).



menu2(robotics):- fld(robotics),crs(digitalcircuit),crs(basicelectro),crs(vlsi),writeln("You can take the courses: "),showC2(['ai(Artificial Intelligence ece134)', 'drw(Data in real World ece131)'],0).



