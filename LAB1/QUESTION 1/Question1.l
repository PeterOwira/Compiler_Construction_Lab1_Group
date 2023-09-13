
/* GROUP MEMBERS 
134703 Rita Maringa
135581 Peter Owira
137023 Booker Ongalo
134707 Joseph Mutua
132759 Leon Langat
136902 Cheruiyot Emmanuel

/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/

%{

%}
 
/* Rule Section takes an English sentence and outputs the individual words 
E.g. An input can be "He is a smart student". 
The output will be individual words "He", "is", "a", "smart" and "student". 
Each word on its own line. */
%%

[ \t\n]+
[a-zA-Z]+   { printf("%s\n", yytext); }
.          

%%
 
/*** Code Section prints the individual words taken from the user with each word in it's own line***/
int yywrap(){}
int main() {
    printf("Enter a sentence: ");
    yylex();
    return 0;
}