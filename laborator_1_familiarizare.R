#laborator 1 - 27.02.2024

#Familiarizare in R

#R este un limbaj de script case sensitive, deci A != a
#majoritatrea rezultatelor sunt afisate dupa cifra 1 incadrata in semnul []
#rezultatele incep de la primul element

#variabilele se pot crea cu = sau <-
A<-12
B=17

#afisare in consola a unei variabile
A  #se afiseazza [1] 12

#tipul unei variabile class()
class(A) #se afiseaza [1] "numeric"

#pentru a indica tipul integer la ao variabila adaugam litera L la final
B<-17L 

#operatorii aritmetici +,-,/,*,^, %/%(catul), %%(restul)
2^3  #8
13%/%2 #6
13%%2 #1

#in R exista conceptul de infinit
a=5/0
c = Inf
exp(a) #Inf
exp(-a) # 0

#generare secventa de numere intregi, adica vector de la 1 la 10
#elementele au acelasi tip INTOTDEAUNA
a<-1:10 #operatorul : nu inseamna imaprtire
1:10-1 

#pentru specificarea unui pas in cadrul unui secvente putem folosi seq()
seq(1,5,0.5) #[1] 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0
rep(1,10) #repeta 1 de 10 ori

#Secventele genreate vor avea un rol important in generarea datelor de test

#verificarea apartenentei la un tip cu functia is.tip()
is.numeric(A) #TRUE
is.integer(A) #FALSE

#schimbare tip variabila
as.character(A) #[1] "12"

#enumerare variabile disponibile cu functia ls()
#variabilele create se acumuleaza intr-o zona de memorie = WORKSPACE
ls() #[1] "a" "A" "B" "c"

#pentru a returna si tipul si valoara utilizam ls.str()
ls.str() 
#a :  int [1:10] 1 2 3 4 5 6 7 8 9 10
#A :  num 12
#B :  int 17
#c :  num Inf

#stergere variabila din memorie
rm(B)

#stergere integrala a memoriei
rm(list=ls())

