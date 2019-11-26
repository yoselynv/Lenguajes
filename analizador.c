
#include<stdio.h>
#include<stdlib.h>

int main(){
    FILE *PF;
    char caracter;
    pf=fopen;

    char estado;
    estado = '0'
    printf("introduzca opcion");
    scanf("%o" , &o);
    switch (estado)
    {
    case '''':
        if (estado=='a')
        {
            estado='l';
        }else
        {
            if(estado=='l'){
               estado='j';
            }
        }
        else
        {
            if(estado=='j'){
                estado='k'
            }
        }
        break;
    case 'letra_mayuscula'
        if (estado=='j' || estado=='k')
        {
            estado='j'
        }
        break;

    case 'alfa':
         if (estado=='j' || estado=='k')
        {
            estado='k'
        }
        break;

    case ' digito':
        if(estado=='j'){
            estado='k';
        }
        break;
    case '<-':
          if(estado=='b'){
              estado='j'
          }
          else
          {
              if(estado=='j'){
                  estado='j'
              }
          }
          break;

    case 'ope_relacional':
          if(estado=='c'|| estado=='i'){
              estado='c';
          }
          else
          {
              if(estado=='lr'){
                  estado='c';
              }
          }
          break;

    case 'condicion':
           if(estado=='d'){
               estado='d';
           } 
           else{
               if(estado=='d' || estado =='i'){
                   estado='si';
               }
           }
           break;     
    case '"':
         if(estado=='e' || estado=='i'){
             estado='e';
         } 
         else
         {
             if(estado=='f' || estado=='i'){
                 estado='f';
             }

         }  


          
            


    case '\0':
         if(estado=='a') [

         ]   
            
        
        
         

        
                             
    
    default: printf("error, no es una instruccion")
        break;
    }

}
    
