sexo(X,masculino).
sexo(Y,femenino).
carrera(ing_mecanica).
carrera(ing_industrial).
carrera(ing_quimica).
carrera(ing_civil).
carrera(ing_sistemas).
carrera(ing_electica).
carrera(derecho).
carrera(arquitectura).
carrera(periodismo).
carrera(antropologia).
carrera(periodismo).
carrera(pedagogia).
carrera(psicologia).
carrera(trabajo_social).
carrera(filosofia).
carrera(historia).
carrera(letras).
carrera(sociologia).
carrera(educ.fisica).
carrera(lenguas_extranjeras).
carrera(musica).
carrera(desarrollo_local).
carrera(matematicas).
carrera(fisica).
carrera(astronomia).
carrera(medicina).
carrera(odontologia).
carrera(nutricion).
carrera(quimicayfarmacia).
carrera(enfermeria).
carrera(biologia).
carrera(administracion_empresas).
carrera(contaduria_publica_y_finanzas).
carrera(administracion_aduanera).
carrera(banca_y_finanzas).
carrera(informatica_administrativa).
carrera(mercadotecnia).
carrera(X).

imprimir_alumnos([]):-!.
imprimir_alumnos([A|B]):-write(A),nl,imprimir_alumnos(B).
imprimir_clases([A|B]):-write(A),nl,imprimir_clases(B).

listaporcarrera([A|B],X):-carrera(X),imprimir_alumnos([A|B]).
listaporclases([A|B],X):-carrera(X),imprimir_clases([A|B]).

agregar(E,L,[E|L]).
agregar(E,[X|Y],[X,Z]):-agregar(E,Y,Z).

agregarcarrera(E,L,[E|L]).
agregarcarrera(E,[X|Y],[X,Z]):-agregarcarrera(E,Y,Z).

clase_aprobada(Z):-Z>64,write("Clase Aprobada").
clase_aprobada(Z):-Z<65,write("Clase Reprobada").

clasesporcarrera([],Z).
clasesporcarrera([X|Y],Z):-carrera,

