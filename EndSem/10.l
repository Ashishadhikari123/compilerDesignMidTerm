%{
#include<stdio.h>
%}
reg (a|b)*a(aa|ab|ba|bb)
%%
{reg} {printf("String accepted");}
.*    {printf("string is not accepted");}
%%
int yywrap()
{
return 1;
}
int main(int argc ,char* argv[])
{
extern FILE* yyin;
yyin=fopen("input12.txt","r");
yylex();
return 0;
}
