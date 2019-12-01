#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	

 char c, rutaFichero[255],numeroPalabras;
 FILE *fichero;
 char linea[1024],palabra[50];
 int estado=0,id;
  
  
  
  printf ("\n\n\nIntroduce el nombre del archivo y pulse INTRO:\n");
  scanf (" %[^\n]", rutaFichero);
  fichero = fopen(rutaFichero, "r");
 
  
    while (( c=getc(fichero)) != EOF){
	
    
    if (((c >= 'a') && (c <= 'z'))){
	  id=1;
    }else if (((c >= 'A') && (c <= 'Z'))){
		 id=2;
	}else if (((c >= '0' ) && (c <= '9'))){
	 id=4;
	}else if (c=='+'){
		 id=6;
	 }else if (c=='-'){
	 id=8;
    }else if (c=='*'){
     id=9;
    }else if (c=='/'){
     id=10;
    }else if (c==';'){
     id=5;
    } else if (c=='<'){
     id=11;
    }else if (c=='>'){
     id=12;
    }else if (c=='='){
     id=13;
    } 
	
  	


switch(id) {
		/* Caso1: Si reconoce una letra minuscula */
		case 1 :
		 if(estado==0 || estado==1){
		  estado=1;
		  }else if(estado==2){
		   estado=1;
		  } else if(estado==4){
		   estado=14;
		  }
		  
		 break;
		  	
		  /* Caso2: Si reconoce una letra mayuscula */	
		case 2:
		 if(estado==0|| estado==2){
		  estado=2;
		  }else if(estado==1){
		    estado=1;
		  }else if(estado==11 || estado==12 || estado==13){
		    estado==2;
		  }
		  
		 	break;
		/* Caso1: Si reconoce un numero */
		case 4:
			if(estado==0 || estado==2 || estado==4|| estado==8)  {
			 estado=4;
			}
			
           break;
		
	     /* Caso6: Si reconoce el signo "+" */
		case 6:
	    if(estado==3 ){
		estado=6;
		}
		break;
		
		
		/* Caso8: Si reconoce el signo "-" */
		case 8:
			if(estado==11){
			 estado=8;
			}else if(estado==14){
		   estado=14;
		  }
			
		
		   break;
	
		/* Caso9: Si reconoce el signo "*" */
		case 9:
		    
			
		break;
	    
	    /* Caso9: Si reconoce el signo "/" */
		case 10:
		    if(estado==4 ){
			estado=10;
			}
	       break;
		/* Caso5: Si reconoce el signo ";" */
		case 5:
		    if(estado==1 ){
			printf("Tkn_declaracionVariable \n");
			}else if(estado==4){
			  printf("Tkn_Asignacion \n");
			}else if(estado==3){
			   printf("Tkn_Ciclo \n");
			}else if(estado==14){
		     printf("Tkn_CicloRepetir \n");
		  }
		break;
		/* Caso11: Si reconoce el signo "<" */
		case 11:
		    if(estado==4 ){
			estado=4;
			}else if(estado==2 ){
			estado=2;
			}else if(estado==1){
			 estado=11;
			}
			
			
		break;
		/* Caso12: Si reconoce el signo ">" */
		case 12:
		    if(estado==2 || estado==3 ){
			estado=12;
			}
		break;
	    /* Caso13: Si reconoce el signo "=" */
			case 13:
		    if(estado==4 ){
			estado=13;
			}
		break;
	      
		
	default:
	 printf(" ");
	 
	 
	}
	
	printf("El id es: %d\n\n",id);	
	
}
printf("El estado actual es: %d\n\n", estado);	
int i;
  for( i=0;i<20;i+=1)
    {
	 fscanf(fichero, "%s", palabra);
     
    }
printf("\n\nEl numero de palabras del fichero es: %s\n\n", palabra);


  system("PAUSE");
  
  return 0;
   

    

  	

 
}
	

