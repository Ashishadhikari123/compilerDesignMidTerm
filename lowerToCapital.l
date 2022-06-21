
%{
#include<stdio.h>
%}

%%
 /*** Rules section ***/
[a-z] printf("%c",yytext[0] - ('a' - 'A'));
0 { return 0;}
%%
int yywrap(void) {}
int main()
{
  extern FILE *yyin;
  yyin=fopen("input.txt","r");
  yylex();
  return 0;
}
//flex fileName.lex
//cc lex.yy.c
//./a.out
