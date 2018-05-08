DIGITO		[0-9]
LETRA		[a-zA-Z]
DIGITOS 	{DIGITO}+
FACAO		(.{DIGITOS})?
EXPOENTE	([E]([+]|[-])?{DIGITOS})?
LETRAOUDIGITO	{LETRA}|{DIGITO}
SUBLINHADO	[_]{LETRAOUDIGITO}+
ID		{LETRA}{LETRAOUDIGITO}*{SUBLINHADO}*
NUMLITERAL	{DIGITOS}{FACAO}{EXPOENTE}
MAIN		"main"
ACHAVES		[{]
FCHAVES		[}]
VAR			"var"
ENDCOMMAND	";"
TIPO		"int"|"bool"
ATRIB		":="
APAREN		"("
FPAREN		")"
CONDI 		["if"]
REPEAT 		"while"|"do"
RET 		"return"
PRINT 		"print"
BOOL		"true"|"false"
OP 			"+"|"-"|"*"|"/"|"&&"|"||"|"<"|">"|"=="
VIRG		","
FUNC		"function"

%%
{MAIN}				{printf("main: %s\n",yytext);}

{ACHAVES}			{printf("abre chaves: %s\n",yytext);}
{FCHAVES}			{printf("fecha chaves: %s\n",yytext);}
	
{VAR}				{printf("declaracao: %s\n",yytext);}
{ENDCOMMAND}		{printf("end command: %s\n",yytext);}

{TIPO}				{printf("tipo: %s\n",yytext);}

{ATRIB}				{printf("atribuicao: %s\n",yytext);}

{APAREN}			{printf("abre parenteses: %s\n",yytext);}
{FPAREN}			{printf("fecha parenteses: %s\n",yytext);}
{CONDI}				{printf("condicional: %s\n",yytext);}
{REPEAT}			{printf("repeticao: %s\n",yytext);}
{RET}				{printf("retorno: %s\n",yytext);}
{PRINT}				{printf("print: %s\n",yytext);}

{BOOL}				{printf("booleano: %s\n",yytext);}

{OP}				{printf("operacao: %s\n",yytext);}

{VIRG}				{printf("virgula: %s\n",yytext);}

{FUNC}				{printf("funcao: %s\n",yytext);}

{ID}				{printf("id: %s\n",yytext);}
{NUMLITERAL}		{printf("num: %s\n",yytext);} 

%%
int yywrap();

main(){
  yylex();
}

int yywrap(){
 return 1;
}
