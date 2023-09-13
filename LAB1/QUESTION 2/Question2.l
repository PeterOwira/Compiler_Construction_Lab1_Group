
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
int vowels = 0;
int consonants = 0;
%}
 
/*** Rule Section has three rules, first rule
matches with vowels in the input sentence, second rule
matches with consonants in the sentence and
third rule does not take input after the enter***/

%%
[AaEeIiOoUu] {printf("%s Is a vowel\n", yytext);
       vowels++;}
.     {printf("%s Is a consonant\n", yytext); consonants++;}
\n    {return 0;}
%%
 

/*** Code Section prints the number of
vowels and consonants present in the given input. 
It also states if the individual syllables are either vowels or consonants***/

int yywrap(){}
int main(){
 
printf("Enter a string: ");
    yylex();
    printf("Number of vowels: %d\n", vowels);
    printf("Number of consonants: %d\n", consonants);
    return 0;
}