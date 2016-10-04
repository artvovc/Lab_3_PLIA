inc(X,Y):- Y is X+1.

getElementById([Head|Tail],ValueIndex,IncFrom,Result):- inc(IncFrom,LocalI), LocalI=\=ValueIndex->getElementById(Tail,ValueIndex,LocalI,Result);(Result=Head,!).

length_1(0,[]).
length_1(L+1, [_|T]) :- length_1(L,T).

ciclu([H|T],ArrSize,StartInc):-
	inc(StartInc,LocalI),
	getElementById([H|T],LocalI,0,Result),
	LocalI=<ArrSize->
	((Pair is mod(Result,2),Pair==0->(write(Result),
         (LocalI<(ArrSize-1)->write(",");write("")))
	 ;write("")),ciclu([H|T],ArrSize,LocalI));!.

result([H|T]):-write("["),length_1(X,[H|T]),ArrSize is X,ciclu([H|T],ArrSize,0),write("]").

















































