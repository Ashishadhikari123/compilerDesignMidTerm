%{
%}
reg (aa|bb)*((ab|ba)(aa|bb)*(ab|ba)(aa|bb)*)*
%%
{reg} {printf("String is accepted");}
.* {printf("string is not accepted");}
%%
int yywrap()
{
return 1;
}
int main()
{
extern FILE* yyin;
yyin=fopen("input11.txt","r");
yylex();
return 0;
}
