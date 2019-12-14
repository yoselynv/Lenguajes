imprimir_alumnos([]):-!.
imprimir_alumnos([A|B]):-write(A),nl,imprimir_alumnos(B).
imprimir_clases([A|B]):-write(A),nl,imprimir_clases(B).
carrera(X).

listaporcarrera([A|B],X):-carrera(X),imprimir_alumnos([A|B]).
listaporclases([A|B],X):-carrera(X),imprimir_clases([A|B]).

agregar(E,L,[E|L]).
agregar(E,[X|Y],[X,Z]):-agregar(E,Y,Z).

agregarcarrera(E,L,[E|L]).
agregarcarrera(E,[X|Y],[X,Z]):-agregarcarrera(E,Y,Z).

clase_aprobada(Z):-Z>64,write("Clase Aprobada").
clase_aprobada(Z):-Z<65,write("Clase Reprobada").
