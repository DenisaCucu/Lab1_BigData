#Tibbles

#Tibbles sunt structuri de date tabelare ce sunt create prin librăria tidyverse. Alte librării din R folosesc
#structuri asemănătoare de tip data frame. Putem să realizăm conversia folosind funcția as_tibble().

#Tibbles sunt create prin alăturarea unor vectori de dimensiune egală sau de dimensiune 1 care sunt
#extinși prin replicare la aceeași dimensiune cu restul vectorilor folosiți în compunere. Folosim funcția
#tibble() ce preia ca argumente vectorii componenți; denumirea vectorilor va apărea sub forma
#capului de tabel; nu e obligatoriu să se folosească vectori numiți, asta înseamnă că putem avea
#denumiri create de R pornind forma de construcție a acestora (a se vedea primul exemplu de creare tibble).

#se incarca libraria tidyverse
library(tidyverse) 

#se creează un tabel cu 5 randuri (date de dimensiunea vectorilor); prima coloană e completată cu numere de la 2 până la 6, a doua
#coloană cu numărul 1 peste tot iar a treia coloană cu 5 numere extrase aleator din numerele cuprinse între 1 și 100 (a se observa funcția
#sample()). Pentru generare de date mai putem folosi funcțiile runif(n) generează n numere aleatoare dupa o distributie uniforma; rnorm(n)
#generează numere aleatoare dupa o distribuție normală
tibble(2:6, 1, sample(1:100,5) 
       
#putem combina vectori de tipuri diferite într-un tibble
tibble(2:6, "Ana", 1.3)

#creare tibble din vectori numiți
x=1:7
y=1
z=x+y
tibble(x,y,z)

#putem crea tibble cu nume de coloane atribuite de noi, singura condiție e ca numele să fie încadrate de ghilimele
t<- tibble(
':)'="smile",
' ' ='space',
"21"=21)

#O altă modalitate de a crea tibbles este de a ne folosi de funcția tribble() prescurtarea de la
#transposed tibble, ce este specializată pentru transmiterea valorilor în cod: capurile de coloane sunt
#formule iar valorile sunt separate prin virgulă. Acest lucru face posibil să aranjăm date într-o formă
#ușor de citit (spre deosebire de tibble unde valorile pentru vectorii de intrare erau pe linie, aici
#valorile vor fi citite pe coloana)

tt<-tribble(
  ~nume, ~disciplina, ~nota,
  "ana", "matematica", 10,
  "bob", "romana", 10) 

#În comparație cu structurile de date create cu data.frame există diferențe legate de modul de afișare
#și de operațiile de extragere elemente.

#Tibbles afișează datele optimizat, adică limitează numărul de variabile (de coloane) ce sunt afișate la
#dimensiunea ecranului, precum și numărul de linii la 10, ceea ce facilitează lucrul cu seturi mari de
#date. În plus sub fiecare coloană este afișat și tipul de dată. Totuși dacă se dorește vizualizarea de
#date suplimentare există opțiuni ce pot fi folosite.
#Lista completă a opțiunilor care pot fi folosite poate fi văzută cu comanda

package?tibble 

#In RStudio se poate folosi pentru vizualizare funcția View() ce va deschide tabelul complet într-o
#fereastră separată
View(tt)

#Pentru a extrage date dintr-un tabel ne putem folosi fie de semnul $ fie de paranteze pătrate duble
#[[ ]]
#extragerea datelor de pe coloana nume din tabelul cu tt 