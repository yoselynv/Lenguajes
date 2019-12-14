alumno(juan).
alumno(maria).
alumno(pedro).
alumno(renata).
alumno(luis).
alumno(jorge).
alumno(mariana).
alumno(jose).
alumno(alejandra).
alumno(pablo).
alumno(tania).

sexo(jorge, masculino).
sexo(juan,masculino).
sexo(pedro,masculino).
sexo(maria,femenino).
sexo(renata,femenino).
sexo(mariana,femenino).
sexo(jose,masculino).
sexo(alejandra,femenino).
sexo(pablo,masculino).
sexo(tania,femenino).

sexo(X,masculino).
sexo(Y,femenino).


carrera(ing_mecanica,jorge).
carrera(ing_industrial,juan).
carrera(ing_quimica,pedro).
carrera(ing_civil,maria).
carrera(ing_sistemas,renata).
carrera(ing_electica,mariana).
carrera(derecho,jose).
carrera(arquitectura,alejandra).
carrera(periodismo,pablo).
carrera(antropologia,tania).


carrera(ing_mecanica,X).
carrera(ing_industrial,X).
carrera(ing_quimica,X).
carrera(ing_civil,X).
carrera(ing_sistemas,X).
carrera(ing_electica,X).
carrera(derecho,X).
carrera(arquitectura,X).
carrera(periodismo,X).
carrera(antropologia,X).
carrera(periodismo,X).
carrera(pedagogia,X).
carrera(psicologia,X).
carrera(trabajo_social,X).
carrera(filosofia,X).
carrera(historia,X).
carrera(letras,X).
carrera(sociologia,X).
carrera(educ.fisica,X).
carrera(lenguas_extranjeras,X).
carrera(musica,X).
carrera(desarrollo_local,X).
carrera(matematicas,X).
carrera(fisica,X).
carrera(astronomia,X).
carrera(medicina,X).
carrera(odontologia,X).
carrera(nutricion,X).
carrera(quimicayfarmacia,X).
carrera(enfermeria,X).
carrera(biologia,X).
carrera(administracion_empresas,X).
carrera(contaduria_publica_y_finanzas,X).
carrera(administracion_aduanera,X).
carrera(banca_y_finanzas,X).
carrera(informatica_administrativa,X).
carrera(mercadotecnia,X).

clase_alumno(Y,X).
clase_carrera(X,Y).

agregarcarrera(E,L,[E|L]).
agregarcarrera(E,[X|Y],[X,Z]):-agregarcarrera(E,Y,Z).

agregar_alumno(X,L,[X|L]).
agregar_alumno(X,[X|Y],[X|Z]):-agregar_alumno(X,Y,Z).
alumno_carrera(X,Y,A,B):-carrera(Y,X),agregar_alumno(X,A,B).

agregar_clase(X,L,[X|L]).
agregar_clase(X,[X|Y],[X|Z]):-agregar_clase(X,Y,Z).
alumno_clase(X,Y,A,B):-clase_alumno(Y,X),agregar_clase(X,A,B).
carrera_clase(X,Y,A,B):-clase_carrera(X,Y),agregar_clase(X,A,B).


imprimir_alumnos([]):-!.
imprimir_alumnos([A|B]):-write(A),nl,imprimir_alumnos(B).
imprimir_clases([A|B]):-!.
imprimir_clases([A|B]):-write(A),nl,imprimir_clases(B).

lista_alumnos_por_carrera([A|B],X):-carrera(X),imprimir_alumnos([A|B]).
lista_clases_por_carrera([A|B],X):-carrera(X),imprimir_clases([A|B]).


alumnos_por_carrera()
clase_aprobada(Z):-Z>64,write("Clase Aprobada").
clase_aprobada(Z):-Z<65,write("Clase Reprobada").


