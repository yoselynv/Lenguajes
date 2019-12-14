
imprimir_alumnos([A|B]):-write(A),nl,imprimir_alumnos(B).
imprimir_clases([A|B]):-write(A),nl,imprimir_clases(B).
carrera([A|B],X).

listaporcarrera([A|B],X):-carrera([A|B],X),imprimir_alumnos([A|B]).
listaporclases([A|B],X):-carrera([A|B],X),imprimir_clases([A|B]).
