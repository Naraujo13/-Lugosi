
letra[a-zA-Z]
digito[0-9]

fracao_opcional (.{digito}+)?

expoente_opcional (E(\+|-)?([0-9]+))?

numero ({digito}+{fracao_opcional}{expoente_opcional})

%%

{letra}+             {printf("Letra %s\n", yytext);}
{numero}             {printf("Token_Numerico %s\n", yytext);}

%%
int yywrap();

main (){
  yylex();
}

int yywrap(){
  return 1;
}

