%top{
#define YYSTYPE int
}
%option noyywrap
class "class"
public "public"
static "static"
void "void"
main "main"
String "String"
int "int"
boolean "boolean"
return "return"
if "if"
else "else"
while "while"
print "System.out.println"
length "length"
true "true"
false "false"
this "this"
new "new"
lineTerminator \r|\n|\r\n
comment "//"
identifier [a-zA-Z_]+
number 0|[1-9][0-9]*
%%
[ ]              {}
[\t \n]+          {}
[{]        {printf("token: %s\n", yytext);}
[}]        {printf("token: %s\n", yytext);}
[\[]        {printf("token: %s\n", yytext);}
[\]]        {printf("token: %s\n", yytext);}
[)]        {printf("token: %s\n", yytext);}
[(]        {printf("token: %s\n", yytext);}
[&&]        {printf("token: %s\n", yytext);} 
[<]        {printf("token: %s\n", yytext);}
[!]        {printf("token: %s\n", yytext);}
[+]        {printf("token: %s\n", yytext);}
[-]        {printf("token: %s\n", yytext);}
[*]        {printf("token: %s\n", yytext);}
[.]        {printf("token: %s\n", yytext);}
[,]        {printf("token: %s\n", yytext);}
[=]        {printf("token: %s\n", yytext);}
[;]        {printf("token: %s\n", yytext);}
{comment}  {printf("comment: %s\n", yytext);}
{class}  {printf("token: %s\n", yytext);}
{public}  {printf("token: %s\n", yytext);}
{static}  {printf("token: %s\n", yytext);}
{void}  {printf("token: %s\n", yytext);}
{main}  {printf("token: %s\n", yytext);}
{String}  {printf("token: %s\n", yytext);}
{int}  {printf("token: %s\n", yytext);}
{boolean}  {printf("token: %s\n", yytext);}
{return}  {printf("token: %s\n", yytext);}
{if}  {printf("token: %s\n", yytext);}
{else}  {printf("token: %s\n", yytext);}
{while}  {printf("token: %s\n", yytext);}
{length} {printf("token: %s\n", yytext);}
{false} {printf("token: %s\n", yytext);}
{true} {printf("token: %s\n", yytext);}
{new} {printf("token: %s\n", yytext);}
{this} {printf("token: %s\n", yytext);}
{print} {printf("token: %s\n", yytext);}
{identifier}  {printf("identifier: %s\n", yytext);}
{number}  {printf("number: %s\n", yytext);}
%%