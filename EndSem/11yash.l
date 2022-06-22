Lex Code-

%{

#include<stdio.h>

%}

%%

[-,+]?[0-9]+"."[0-9]+ printf("float Constant");

[-,+]?[0-9]+ printf("Integer Constant");

[a-zA-Z]+ printf("Identifier");

[0-9]+[a-zA-Z]+|[a-zA-Z]+[0-9]+ printf("Neither integer nor Constant");

%%

int yywrap()

{

return 1;

}

int main()

{

yyin=fopen("yashchandra.txt","r");

yylex();

return 0;

}

