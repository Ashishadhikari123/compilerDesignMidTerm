%{
#include<stdio.h>
%}

%%

[\n\t]+ {fprintf(yyout," ");}
. {fprintf(yyout,"%s",yytext);}

%%

int yywrap() {}

int main(){
	extern FILE *yyout,*yyin;
	yyin=fopen("input1.txt","r");
	yyout = fopen("output1.txt","w");
	yylex();
	return 0;
}
