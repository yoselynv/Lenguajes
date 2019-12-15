/*Nombre de alumnos*/
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

/*Relacionando un sexo para cada alumno*/
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
/*Relacionando un sexo para cada alumno de forma generica*/
sexo(X,masculino).
sexo(Y,femenino).

/*Relacionando una carrera para cada alumno*/
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
/*Relacionando una carrera para un alumno de forma generica*/
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
carrera(educ_fisica,X).
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

/*Promedio de cada clase de forma generica*/
clasepromedio(Promedio,Clase).
/*Relacionando un promedio para cada clase*/
clasepromedio(89,estadistica).
clasepromedio(70,calculo1).
clasepromedio(45,calculo2).
clasepromedio(87,español).

/*Definiendo el nombre de las clases*/
clase(estadistica).
clase(ingles).
clase(español).
clase(calculo1).
clase(poo).
clase(finanzas).
clase(historia).
clase(sociologia).
clase(metodos).
clase(ambiental).
clase(filosofia).

/*Carreras*/
carrera(biologia).
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

/*Relacionando una clase para cada alumno de forma generica*/
clase_alumno(Y,X).
/*Relacionando una clase para cada alumno*/
clase_alumno(lenguajes,mario).
clase_alumno(circuitos,renata).
clase_alumno(vectores,luis).
clase_alumno(dibujo1,angelica).

/*Relacionando una clase para cada carrera de forma generica*/
clase_carrera(X,Y).
/*Relacionando una clase para cada carrera*/
clase_carrera(organica,ing_quimica).
clase_carrera(circuitos,ing_electrica).
clase_carrera(ingles,lenguas_esxtranjeras).
clase_carrera(poo,ing_sistemas).


/*Agrega una carrera a una lista*/
agregarcarrera(E,L,[E|L]).
agregarcarrera(E,[X|Y],[X,Z]):-agregarcarrera(E,Y,Z).

/*Agrega alumnos a una lista*/
agregar_alumno(X,L,[X|L]).
agregar_alumno(X,[X|Y],[X|Z]):-agregar_alumno(X,Y,Z).
/*Muestra los alumnos por clase en una lista*/
alumno_carrera(X,Y,A,C):-carrera(Y,X),agregar_alumno(X,A,C).

/*Agregar clases a una lista*/
agregar_clase(X,L,[X|L]).
agregar_clase(X,[X|Y],[X|Z]):-agregar_clase(X,Y,Z).
/*Muestra los alumnos por clase en una lista*/
alumno_clase(X,Y,A,B):-clase_alumno(Y,X),agregar_clase(X,A,B).
/*Muestra las clases por carrera en arreglo*/
carrera_clase(X,Y,A,B):-clase_carrera(X,Y),agregar_clase(X,A,B).

/*Caso base de imprimir alumnos*/
imprimir_alumnos([]):-!.
/*Caso recursivo de imprimir alumnos*/
imprimir_alumnos([A|B]):-write(A),nl,imprimir_alumnos(B).
/*Caso base de imprimir clases*/
imprimir_clases([]):-!.
/*Caso recursivo de imprimir clases*/
imprimir_clases([A|B]):-write(A),nl,imprimir_clases(B).

/*Lista de Alumnos por carrera*/
lista_alumnos_por_carrera([A|B],X):-carrera(X),imprimir_alumnos([A|B]).
/*Lista de Clases por carrera*/
lista_clases_por_carrera([A|B],X):-carrera(X),imprimir_clases([A|B]).

/*Regla para saber si un alumno aprobo o no una clase*/
clase_aprobada(Z):-Z>64,write("Clase Aprobada").
clase_aprobada(Z):-Z<65,write("Clase Reprobada").

/*Regla para conocer el promedio de un alumno*/
promedio_alumno(X,Y):-write(X),tab(1),write("tiene"),tab(1),write(Y),tab(1),write("de promedio").

imprimir_promedios([A|B]):-write(A),tab(1),imprimir_promedios(B).
/*Regla para conocer el promedio de varios alumnos*/
promedio_alumnos(X,Y):-write(X),tab(1),imprimir_promedios(Y).

/*Caso base de imprimir alumno*/
imprimir_alumno([]):-!.
/*Caso recursivo de imprimir alumnos*/
imprimir_alumno([A|B]):-write(A),tab(1),imprimir_alumno(B).
alumnos_promedio(X,Y):-write(X),tab(1),imprimir_alumno(Y).

/*Lista de alumnos por clase y promedio*/
alumnos_promedio(X,[A|B],[C|D]):-clase(X),write("Alumnos: "),imprimir_alumno([A|B]),nl,write("Promedios: "),imprimir_promedios([C|D]).

/*Regla para saber si un alumno aprobo o reprobo una clase*/
aprobado(Z):-Z>64,write("Aprobado").
aprobado(Z):-Z<65,write("Reprobado").
/*Imprime los promedios con la observacion correspondiente*/
imprimir_promedios_obs([A|B]):-write(A),tab(1),write("Observacion:"),aprobado(A),tab(1),imprimir_promedios_obs(B).

/*Lista de alumnos por clase,promedio y observacion de aprobado o reprobado*/
alumnos_promedio_observacion(X,[A|B],[C|D]):-clase(X),write("Alumnos: "),imprimir_alumno([A|B]),nl,write("Promedios: "),imprimir_promedios_obs([C|D]).

/* Para poder utilizar assert:
Agregar y eliminar alumno:
1.dynamic alumno/1.
2.assert(alumno(nombre)).
3.retract(alumno(nombre)).
Agregar y eliminar clases:
1.dynamic clase/1.
2.assert(clase(nombre)).
3.retract(clase(nombre)).
Agregar y eliminar calificaciones:
1.dynamic clasepromedio/1.
2.assert(clasepromedio(nota,nombre)).
3.retract(clasepromedio(nota,nombre)).
*/
