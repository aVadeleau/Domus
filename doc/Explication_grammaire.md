<h1 align = "center"> Explication grammaire du projet </h1>


#### Declaration Appareils : 
>  * Dans _"list_declar_appareils"_ : 
> Nous avons décidés de procéder avec une liste pour les cas ou on as plusieurs lignes de déclaration d'appareils.

> * Dans _"declar_appareils"_  :
> Nous avons utilisés pour les identifiants une liste d'identifiants appelées _"list_ident"_, elle est utile dans le cas ou plusieurs appareils sont déclarés sur une ligne.


#### Declaration Interfaces : 
> * Dans "list_declar_interfaces" :
> Comme dans **Declaration Appareils**, nous avons utilisés une liste dans le cas ou nous avons plusieurs lignes de déclaration d'interfaces.

#### Déclaration Scénario : 
> * Dans _"declar_scenarii"_ : 
> Nous avons utilisés une liste nommée "liste_scenari" pour les cas ou on a plusieurs scenario dans le programme.

#### Les scénarios : 
> * Dans _"liste_scenario"_ on se sert de _"list_inside_scenario"_ pour définir le contenu d'un scénario, sachant que "list_inside_scenario est une liste comme  **Déclaration Appareils**, **Interfaces** et **Scénario**


#### Un scenario : 
> * Dans _"liste_inside_scenario"_ c'est une liste comme dit précédement qui va permettre d'aller à _"scenario"_ qui va correspondre à une ligne du scénario.
> On a comme choix possible : 
> 1. Changer l'état d'un appareil/interface (ouvrir les volets, tamiser la lumière, et etc.)
>2. Lancer une boucle _"pourtout_scenario"_
>3. Lancer une alternative _"si_scenario"_
>4. Executer un scénario
>5. Mettre un message

#### Pourtout scenario : 
> * Dans _"pourtout_scenario"_ : 
> Un pourtout dans un scénario peut contenir plusieurs instructions.
> Nous avons définis _"condition_poutout"_ et _"liste_action_pourtout"_, le premier est utilisé pour définir la condition d'arrêt du pourtout tandis que le deuxième liste les actions possibles dans le pourtout.

> * Dans _"list_action_"pourtout"_ : 
> Nous pouvons avoir comme action : 
>1. Avoir une alternative _"si_scenario"_ 
>2. Une autre boucle _"pourtout_scenario"_
>3. Un liste d'actions possible définis dans _"liste_inside_action"_


#### Si scenario : 
> * Dans _"si_scenario"_ : 
> Comme  **Pourtout scenario** un si peut contenir plusieurs actions .

>* Nous avons définis _"condition_si",_ _"si_interieur"_ et _"sinon_si"scenario"_, le premier sert a définir la ou les conditions à vérfier dans le si, le deuxième donne les instructions possibles dans le si, le dernier donne les instructions à faire si la condition n'est pas bonne.

 > * Dans _"sinon_si_scenario"_ :
 > * Un sinon peut contenir un _"si_interieur"_ qui comme dis précédemment donne la liste des instructions possible dans un si.

 > * Dans _"si_interieur"_ :
 > * Nous pouvons avoir : 
> 1. Une autre alternative _"si_scenario"_
>2. Une boucle _"pourtout_scenario"_
>3. Un liste d'actions possible définis dans _"liste_inside_action"_


#### Liste des actions :
> *  C'est la liste des actions possibles pour **Pourtout scenario** et **Si Scenario**.
> *  Pareils que les blocs déclarations ci-dessus nous avons une liste avec _"liste_action"_ qui correspond à une action possible.

> * Dans _"liste_action"_ : 
>1. On peut avoir un message 
>2. Un changement d'état (ouvrir les volets, tamiser la lumière, et etc.)


#### Declaration messages
> * Dans _"liste_messages"_ : 
> Commme les autres blocs de déclaration, nous avons une liste avec _"message_scenario"_ qui définis un message.

> * Dans _"message_scenario"_ :
>1. On peut avoir une chaine de caractère
>2. Un Identifiant
>3. Afficher l'état d'un identifiant
>4. Ne rien avoir


#### Declaration commandes
> * Dans _"liste_declar_commandes"_ : 
> Commme les autres blocs de déclaration, nous avons une liste avec _"declar_commandes"_ qui définis une commande.

> * Dans _"declar_commandes"_ :
>1. On peut associer un appareil/interface à un autre appareil/interface
>2. Associer un appareil/interface à une liste de appareil/interface.
>3. Programmer un scénario à une _"date"_
>4. Programmer un scénario à une  _"liste_date"_

#### Date
> * Dans _"liste_date"_ : 
> Commme dans les blocs de déclaration, nous avons une liste avec _"date"_ qui définis une commande.
