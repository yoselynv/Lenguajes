#include <stdio.h>

int main (void) 
{ 
  char c, rutaFichero[255];
  int dentroPalabra = 0, numeroPalabras = 0;
  FILE *fichero;

  
  
  printf ("\n\n\nIntroduce la ruta y nombre del fichero y pulsa INTRO:\n");
  scanf (" %[^\n]", rutaFichero);
  
  fichero = fopen(rutaFichero, "r+");
  while ((c = getc(fichero)) != EOF)
  {
    if (((c >= 'a') && (c <= 'z')) || ((c >= 'A') && (c <= 'Z')))
	{
	  if (dentroPalabra==0)
	  {
	    numeroPalabras += 1;
		dentroPalabra = 1;
	  }
	}
	else if (dentroPalabra == 1)
      dentroPalabra = 0;
  }
  printf("\n\nEl número de palabras del fichero es: %d\n\n", numeroPalabras);

  printf("\n\n\nPulsa cualquier tecla para salir.");
  system("PAUSE");
  return 0;
}
