#include <stdio.h>

int main () 
{ 
  char c, rutaFichero[255],id;
  int  numeroPalabras = 0;
  FILE *fichero;

  
  
  printf ("\n\n\nIngrese el nombre del archivo:\n");
  scanf (" %[^\n]", rutaFichero);
  
  fichero = fopen(rutaFichero, "r+");
  while ((c = getc(fichero)) != EOF)
  {
    if (((c >= 'a') && (c <= 'z')) )
	{
	  id ='minuscula';
	}
	else if((c >= 'A') && (c <= 'Z')){
    id='mayuscula';
  }
  else if((c >= '0') && (c <= '9')){
  id="digito";
 }
 else if((c == '<') ||(c == '>') || (c=='<=')||(c=='>=')||(c=='==')){
  id='relacional';
 }

  printf("\n\n\nPulsa cualquier tecla para salir.");
  system("PAUSE");
  return 0;
}
