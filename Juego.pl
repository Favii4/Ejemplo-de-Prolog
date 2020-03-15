% Presentado por Fabian Alexander Franco Quiroga - 20152020048
% Juego de ahorcado en Prolog
%

palabra([p,r,o,l,o,g]).

iniciar:- write('Adivina la primera letra'),read(X),
	palabra([X|T]),write('Bien.'),guess(T).

guess([]):- write('Felicitaciones, la palabra es '),palabra(W),write(W),!.
guess(L):-  repeat,write('Siguiente letra'),read(X),

		 ((L=[X|T1],write('Bien.'),guess(T1));
                 (write('Fallaste, intenta de nuevo, '),guess(L))).
