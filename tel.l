%{
#include <stdio.h>
%}

%%
^[0-9]{10}$   { printf("Número válido: %s\n", yytext); }
.             { printf("Error: Caracter no válido\n"); yyterminate(); }
%%

int main() {
    yylex();
    return 0;
}
