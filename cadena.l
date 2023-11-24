%{
#include <stdio.h>
%}

%%
xxa+a*bb   { printf("Cadena válida: %s\n", yytext); }
.          { printf("Cadena no válida: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
