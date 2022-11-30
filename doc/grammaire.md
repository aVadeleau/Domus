<h1 align = "center"> Grammaraire du projet </h1>



#### Application Domus : 
>domus -> PROGRAMME_DOMUS_OUVERT domus_body PROGRAMME_DOMUS_FERMER

#### Body Domus : 
>domus_body ->  DECLARATION_APPAREILS_OUVERT liste_declar_appareils DECLARATION_APPAREILS_FERMER DECLARATION_INTERFACES_OUVERT liste_declar_interfaces DECLARATION_INTERFACES_FERMER DECLARATION_COMMANDES_OUVERT liste_declar_commandes DECLARATION_COMMANDES_FERMER 

#### Declaration Appareils : 

>list_declar_appareils -> declar_appareils liste_declar_appareils 
| declar_appareils

>declar_appareils -> type_appareil liste_ident POINT
| AUTRE_APPAREIL PARENTHESE_OUVERT type_autre_appareil PARENTHESE_FERMER liste_ident POINT
| DEFINIR IDENT AFFECTATION ACCOLADE_OUVERT liste_ident ACCOLADE_FERMER POINT


#### Declaration Inteface : 
>liste_declar_interfaces -> declar_interfaces liste_declar_interfaces 
| declar_interfaces

>declar_interfaces ->type_interface liste_ident POINT
| error 

#### Declaration Scénario :
>declar_scenarii -> DECLARATION_SCENARII_OUVERT liste_scenario DECLARATION_SCENARII_FERMER

#### Les scénarios : 
>liste_scenario -> SCENARIO_DEBUT_OUVERT IDENT SCENARIO_FERMER liste_inside_scenario SCENARIO_FIN_OUVERT IDENT SCENARIO_FERMER liste_scenario 
| vide 
| error 

#### Un Scénario : 
>liste_inside_scenario -> scenario liste_inside_scenario 
| scenario 

>scenario -> IDENT POINT fonction_scenario POINT_VIRGULE    
| pourtout_scenario	
| si_scenario	
| executer_scenario_sc POINT_VIRGULE 	  
| MESSAGE PARENTHESE_OUVERT liste_messages PARENTHESE_FERMER POINT_VIRGULE 



#### Declaration Commande :
>liste_declar_commandes -> declar_commandes POINT liste_declar_commandes 
| declar_commandes POINT

>declar_commandes -> ASSOCIER IDENT AFFECTATION IDENT 
| ASSOCIER IDENT AFFECTATION ACCOLADE_OUVERT liste_ident ACCOLADE_FERMER  
| PROGRAMMER IDENT AFFECTATION PARENTHESE_OUVERT date PARENTHESE_FERMER 
| PROGRAMMER IDENT AFFECTATION ACCOLADE_OUVERT liste_date ACCOLADE_FERMER 

####  Date : 
>liste_date -> PARENTHESE_OUVERT date PARENTHESE_FERMER VIRGULE liste_date
| PARENTHESE_OUVERT date PARENTHESE_FERMER

>date -> elem_date VIRGULE elem_date VIRGULE elem_date VIRGULE elem_date VIRGULE ENTIER

>elem_date -> ENTIER
| UNDERSCORE


#### Type appareil :
>type_appareil -> ECLAIRAGE 		
| ALARME 			
| CHAUFFAGE 		
| FENETRE 			
| VOLET 

#### Type autre appareil :
>type_autre_appareil -> CAFETIERE 	
| TV			
| HIFI			
| VIDEO_PROJ	
| LAVE_LINGE	
| LAVE_VAISSELLE
| SECHE_LINGE	
| PORTAIL			

#### Type interface : 
>type_interface -> INTERRUPTEUR	
| MOBILE		
| TELECOMMANDE	
| TELEPHONE		
| TABLETTE		
| ORDINATEUR

#### Fonction scenario : 
>fonction_scenario -> OUVRIR		
| OUVRIR_PARTIEL
| ALLUMER		
| ALLUMER_PARTIEL
| ALLUMER_ECO	
| ETEINDRE		
| FERMER		
| FERMER_PARTIEL
| TAMISER	

#### Liste indent :
> liste_ident -> IDENT VIRGULE liste_ident
| IDENT


#### Declaration messages :

>liste_messages -> message_scenario VIRGULE liste_messages 
| message_scenario

>message_scenario -> CHAINE_CARACTERE 	
| IDENT 				
| IDENT POINT ETAT
| vide 

	

#### Pourtout scénario : 
>pourtout_scenario -> POURTOUT condition_pourtout FAIRE liste_action_pourtout FAIT POINT_VIRGULE 

>liste_action_pourtout ->si_scenario liste_action_pourtout 
| liste_inside_action 
| pourtout_scenario

>condition_pourtout -> IDENT DOUBLE_POINT type_appareil 								
| IDENT DOUBLE_POINT AUTRE_APPAREIL PARENTHESE_OUVERT type_autre_appareil PARENTHESE_FERMER 
| IDENT DOUBLE_POINT IDENT													
| IDENT DOUBLE_POINT AUTRE_APPAREIL 											
| error 


#### Si scénario : 
>si_scenario -> SI PARENTHESE_OUVERT condition_si PARENTHESE_FERMER ALORS si_interieur sinon_si_scenario

>sinon_si_scenario -> FSI POINT_VIRGULE 
| SINON si_interieur FSI POINT_VIRGULE 

>si_interieur -> si_scenario si_interieur 
|  pourtout_scenario si_interieur
|  liste_inside_action
| vide

#### Liste des actions :
>liste_inside_action -> liste_action POINT_VIRGULE liste_inside_action 
| liste_action POINT_VIRGULE

>liste_action -> MESSAGE PARENTHESE_OUVERT liste_messages PARENTHESE_FERMER
| IDENT POINT fonction_scenario	
| error

>condition_si -> etat_appareil EGUALITE etat_appareil					
| etat_appareil EGUALITE IDENT POINT ETAT					
| etat_appareil NON_EGUALITE etat_appareil					
| etat_appareil NON_EGUALITE IDENT POINT ETAT					
| IDENT POINT ETAT EGUALITE IDENT POINT ETAT				
| IDENT POINT ETAT EGUALITE etat_appareil						
| IDENT POINT ETAT NON_EGUALITE IDENT:id2 POINT ETAT			
| IDENT POINT ETAT NON_EGUALITE etat_appareil

#### Executer scenario : 
>executer_scenario_sc -> EXECUTER_SCENARIO IDENT










