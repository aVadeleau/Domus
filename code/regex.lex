// Specification JFlex
import java_cup.runtime.Symbol;
 
%%
%unicode
%cup
%line
%column
//%debug
%{
	public int getYyLine(){
		return yyline+1;
	}
	public int getYyColumn(){
		return yycolumn+1;
	}
	public String getYyText(){
		return yytext();
	}
%}
PROGRAMME_DOMUS_OUVERT = "<PROGRAMME_DOMUS>"
PROGRAMME_DOMUS_FERMER = "</PROGRAMME_DOMUS>"
DECLARATION_APPAREILS_OUVERT = "<DECLARATION_APPAREILS>"
DECLARATION_APPAREILS_FERMER = "</DECLARATION_APPAREILS>"
DECLARATION_SCENARII_OUVERT = "<DECLARATION_SCENARII>"
DECLARATION_SCENARII_FERMER = "</DECLARATION_SCENARII>" 
DECLARATION_INTERFACES_OUVERT = "<DECLARATION_INTERFACES>"
DECLARATION_INTERFACES_FERMER = "</DECLARATION_INTERFACES>" 
SCENARIO_DEBUT_OUVERT ="<SCENARIO"
SCENARIO_FIN_OUVERT = "</SCENARIO"
SCENARIO_FERMER = ">"
DECLARATION_COMMANDES_OUVERT = "<DECLARATION_COMMANDES>"
DECLARATION_COMMANDES_FERMER = "</DECLARATION_COMMANDES>"
definir = "definir"
executer_scenario = "executer_scenario"
associer = "associer"
programmer = "programmer"
message = "message"
pourtout = "pourtout"
faire = "faire"
fait = "fait"
si = "si"
alors = "alors"
sinon = "sinon"
fsi = "fsi"
etat = "etat"
ouvrir = "ouvrir"
fermer = "fermer"
eteindre = "eteindre"
eteint = "eteint"
demi = "demi"
eco = "eco"
allume = "allume"
allumer = "allumer"
tamiser = "tamiser"
allumer_partiel = "allumer_partiel"
allumer_eco = "allumer_eco"
ouvrir_partiel = "ouvrir_partiel"
fermer_partiel = "fermer_partiel"
ouvert = "ouvert"
ferme = "ferme"
eclairage = "eclairage"
volet = "volet"
chauffage = "chauffage"
alarme = "alarme"
fenetre = "fenetre"
autre_appareil = "autre_appareil"
interrupteur = "interrupteur"
mobile = "mobile"
telephone = "telephone"
telecommande = "telecommande"
tablette = "tablette"
tv = "tv"
hifi = "hifi"
cafetiere = "cafetiere"
video_proj = "video_proj"
lave_vaisselle = "lave_vaisselle"
lave_linge = "lave_linge"
seche_linge = "seche_linge"
ordinateur = "ordinateur"
portail = "portail"
COMMENTAIRE = "//".*
EGUALITE = "=="
NON_EGUALITE = "!="
AFFECTATION = "="
IDENTIFICATEUR  = [_A-Za-z][_A-Za-z0-9]*
POINT = "."
POINT_VIRGULE = ";"
VIRGULE = ","
DOUBLE_POINT = ":"
UNDERSCORE = "_"
CHAINE_CARACTERE =\"[^\"]*\"
ACCOLADE_OUVERT = "{"
ACCOLADE_FERMER = "}"
PARENTHESE_OUVERT = "("
PARENTHESE_FERMER = ")"
entier = [0-9]+

%%
// qqs exemples de r�gles lexicales l�gales...
{PROGRAMME_DOMUS_OUVERT} {return new Symbol(sym.PROGRAMME_DOMUS_OUVERT);}
{PROGRAMME_DOMUS_FERMER} {return new Symbol(sym.PROGRAMME_DOMUS_FERMER);}
{DECLARATION_APPAREILS_OUVERT} {return new Symbol(sym.DECLARATION_APPAREILS_OUVERT);}
{DECLARATION_APPAREILS_FERMER} {return new Symbol(sym.DECLARATION_APPAREILS_FERMER);}
{DECLARATION_SCENARII_OUVERT} {return new Symbol(sym.DECLARATION_SCENARII_OUVERT);}
{DECLARATION_SCENARII_FERMER} {return new Symbol(sym.DECLARATION_SCENARII_FERMER);}
{DECLARATION_INTERFACES_OUVERT} {return new Symbol(sym.DECLARATION_INTERFACES_OUVERT);}
{DECLARATION_INTERFACES_FERMER} {return new Symbol(sym.DECLARATION_INTERFACES_FERMER);}
{DECLARATION_COMMANDES_OUVERT} {return new Symbol(sym.DECLARATION_COMMANDES_OUVERT);}
{DECLARATION_COMMANDES_FERMER} {return new Symbol(sym.DECLARATION_COMMANDES_FERMER);}
{SCENARIO_DEBUT_OUVERT} {return new Symbol(sym.SCENARIO_DEBUT_OUVERT);}
{SCENARIO_FIN_OUVERT} {return new Symbol(sym.SCENARIO_FIN_OUVERT);}
{SCENARIO_FERMER} {return new Symbol(sym.SCENARIO_FERMER);}
{definir}  {return new Symbol(sym.DEFINIR);}
{executer_scenario} {return new Symbol(sym.EXECUTER_SCENARIO);}
{associer} {return new Symbol(sym.ASSOCIER);}
{programmer} {return new Symbol(sym.PROGRAMMER);}
{message}  {return new Symbol(sym.MESSAGE);}
{pourtout} {return new Symbol(sym.POURTOUT);}
{faire} {return new Symbol(sym.FAIRE);}
{fait} {return new Symbol(sym.FAIT);}
{si} {return new Symbol(sym.SI);}
{alors} {return new Symbol(sym.ALORS);}
{sinon} {return new Symbol(sym.SINON);}
{fsi} {return new Symbol(sym.FSI);}
{etat} {return new Symbol(sym.ETAT);}
{ouvrir} {return new Symbol(sym.OUVRIR);}
{fermer} {return new Symbol(sym.FERMER);}
{eteindre} {return new Symbol(sym.ETEINDRE);}
{eteint} {return new Symbol(sym.ETEINT);}
{demi} {return new Symbol(sym.DEMI);}
{eco} {return new Symbol(sym.ECO);}
{allume} {return new Symbol(sym.ALLUME);}
{allumer} {return new Symbol(sym.ALLUMER);}
{tamiser} {return new Symbol(sym.TAMISER);}
{allumer_partiel} {return new Symbol(sym.ALLUMER_PARTIEL);}
{allumer_eco} {return new Symbol(sym.ALLUMER_ECO);}
{ouvrir_partiel} {return new Symbol(sym.OUVRIR_PARTIEL);}
{fermer_partiel} {return new Symbol(sym.FERMER_PARTIEL);}
{ouvert} {return new Symbol(sym.OUVERT);}
{ferme} {return new Symbol(sym.FERME);}
{eclairage} {return new Symbol(sym.ECLAIRAGE);}
{volet} {return new Symbol(sym.VOLET);}
{chauffage} {return new Symbol(sym.CHAUFFAGE);}
{alarme} {return new Symbol(sym.ALARME);}
{fenetre} {return new Symbol(sym.FENETRE);}
{autre_appareil} {return new Symbol(sym.AUTRE_APPAREIL);}
{interrupteur} {return new Symbol(sym.INTERRUPTEUR);}
{mobile} {return new Symbol(sym.MOBILE);}
{telephone} {return new Symbol(sym.TELEPHONE);}
{telecommande} {return new Symbol(sym.TELECOMMANDE);}
{tablette} {return new Symbol(sym.TABLETTE);}
{tv} {return new Symbol(sym.TV);}
{hifi} {return new Symbol(sym.HIFI);}
{cafetiere} {return new Symbol(sym.CAFETIERE);}
{video_proj} {return new Symbol(sym.VIDEO_PROJ);}
{lave_vaisselle} {return new Symbol(sym.LAVE_VAISSELLE);}
{lave_linge} {return new Symbol(sym.LAVE_LINGE);}
{seche_linge} {return new Symbol(sym.SECHE_LINGE);}
{ordinateur} {return new Symbol(sym.ORDINATEUR);}
{portail} {return new Symbol(sym.PORTAIL);}
{COMMENTAIRE}  {}
{EGUALITE} {return new Symbol(sym.EGUALITE);}
{NON_EGUALITE} {return new Symbol(sym.NON_EGUALITE);}
{AFFECTATION} {return new Symbol(sym.AFFECTATION);}
{POINT} {return new Symbol(sym.POINT);}
{POINT_VIRGULE} {return new Symbol(sym.POINT_VIRGULE);}
{VIRGULE} {return new Symbol(sym.VIRGULE);}
{DOUBLE_POINT} {return new Symbol(sym.DOUBLE_POINT);}
{UNDERSCORE} {return new Symbol(sym.UNDERSCORE);}
{CHAINE_CARACTERE} {return new Symbol(sym.CHAINE_CARACTERE, yytext());}
{ACCOLADE_OUVERT} {return new Symbol(sym.ACCOLADE_OUVERT);}
{ACCOLADE_FERMER} {return new Symbol(sym.ACCOLADE_FERMER);}
{PARENTHESE_OUVERT} {return new Symbol(sym.PARENTHESE_OUVERT);}
{PARENTHESE_FERMER} {return new Symbol(sym.PARENTHESE_FERMER);}
{IDENTIFICATEUR}  {return new Symbol(sym.IDENT, yytext());}
{entier} {return new Symbol(sym.ENTIER, new Integer(yytext()));}
\n {} // consommation d’un passage a la ligne
" " {}
"	" {}
// exemple de r�gle de d�tection d'erreurs lexicales...
//System.out.println(" Erreur ligne "+(yyline+1)+" colonne "+(yycolumn+1)+" : "+yytext()+" => caractère inconnu ! "); .. {System.out.println(" Erreur ligne "+(yyline+1)+" colonne "+(yycolumn+1)+" : "+yytext()+" => caractère inconnu ! ");}