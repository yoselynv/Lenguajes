%{
# include <stdio.>
#include<math.h>
void Salir();
%}
DIGITO [0-9] ECHO
CADENA [A-Za-z][a-zA-Z0-9]* ECHO
TIPO [INT]|[STRING]|[DOUBLE]  

%%

{CADENA} printf("token cadena: %s\n", yytext);

{DIGITO} printf ("token entero: %s\n", yytext);

{CADENA}"<""-"{DIGITO}*
                    printf("token asignacion: %s\n", yytext);
                    
'DEFINIR'{CADENA}{TIPO}";"
                     printf("token declararVariable: %s\n", yytext);
                     
'WHILE'"("{CADENA}"=""="{CADENA}")"| {CADENA}"<"{CADENA}")" |{CADENA}">"{CADENA}")"|{CADENA}"<""="{CADENA}")"
|{CADENA}">""="{CADENA}")"|{CADENA}"!""="{CADENA}")"
                                           printf("token ciclo: %s\n", yytext);
                                           
  'IF'"("{CADENA}"=""="{CADENA}")"
                               printf("token seleccion: %s\n", yytext);
                               
  'else'{CADENA}+
                 printf("token seleccion: %s\n, yytext);
                 
   'leer'{CADENA}
                printf("token leer: %s\n", yytext);
                     
                    
'imprimir'{CADENA}|{DIGITO}
                 printf("token imprimir: %s\n", yytext);
                 
 /t {DIGITO}","{DIGITO}
                 printf("token cursor: %s\n", yytext);
                 
 "+"|"-"|"*"|"/"   printf( "token operador: %s\n", yytext );    
 
 {{digito}"+"{digito}}|{{digito}"-"{digito}}|{{digito}"*"{digito}}|{{digito}"/"{digito}}
                                    printf("token operacionAritmetica: %s\n", yytext);
                   
  IF|ELSE|WHILE{
                 printf("token palabraReservada: %s\n", yytext);
                 
                
 %%
 
 int main(int argc, char*argv[]){
             if(argc==2){
                        yyin=fopen(argv[1], "rt");
                        if(yyin==NULL){
                                     printf("no se puede abrir%s", argv[1]);
                                     exit(1);
                        }
              }          
              else{
                  yyin=stdin;
               }
               yylex();
               return 0;
               
 }
 void Salir(){
            printf("finalizado");
            exit(0)
 }

