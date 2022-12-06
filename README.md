# Domus

## English

### Techs/Tools Used : 
- JFlex a lexical analyser generator ( scanner generator)
- CUP a parser generator
- Java

### Description
> A university project(bachelor). 
The goal was to generate two java classes (**CMaisonUser.java** and **HabitatSpecific.java**) from a home made language (Domus) that describe a exemple of utilisation of an house with home-automation devices and scenarios of their utilisation. To do that a grammar have been made (**grammaire.md** in folder **doc**) and an explanation of that grammar was made (**Explication_grammaire.md** in folder **doc**). Both files are in french.

>It also produce a resume (the file **resume.txt**) which tell the numbers of devices, interfaces and scenarios declared. It also tell which scenario has been declared and which interface is associated to which scenario.
This project has been done 

> The text file (the example of utilisation) are in the folder **test**.

> The result will be produced in the folder **result** ( **CMaisonUser.java**, **HabitatSpecific.java** and **resume.txt**)

### Run the project
- Execute the makefile
- run java < parser../test/*name of the file to test* 
**For example : java parser < ../test/ex_mini**
