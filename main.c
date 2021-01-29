#include <stdio.h>

extern int yylex();
extern FILE* yyin;

int yyerror(char *c)
{
  printf("It's a bad: %s\n", c);
  return 0;
}

int main(int argc, char **argv)
{
  if(argc > 1) {
    if(!(yyin = fopen(argv[1], "r"))) {
      perror(argv[1]);
      return (1);
    }
  }

  if(!yylex())
    printf("Done!\n");
  return 0;
}