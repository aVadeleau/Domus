build : Yylex parser
	javac Yylex.java parser.java sym.java

Yylex : regex.lex
	jflex regex.lex

parser : analyseur.cup
	cup analyseur.cup


clean : 
	rm *.class Yylex.java parser.java sym.java 
	rm -rf ../result/*.*