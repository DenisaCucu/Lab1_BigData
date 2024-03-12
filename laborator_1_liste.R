#LISTE

#listele in R pot sa pastreze elemente de tipuri diferite
#pentru a trasmite valorile ce vrem sa le pastram folosim list()

#creăm o listă în care vrem să păstrăm informații despre filmul Avatar, precum regizorul (string), anul (int), bugetul (double)
Avatar<-list("James Cameron",2009,237)

#atribuim nume elementelor din listă folosindu-ne de un vector de caractere
names(Avatar)<-c("regizor", "an", "buget")

#la fel ca și în cazul vectorilor putem să specificăm etichetele în momentul creării listelor
Passengers<-list(regizor="Morten Tyldum", an=2016, budget=150)

#deoarece afișarea listelor este destul de voluminoasă, ne putem folosi de funcția str()
str(Avatar)

#creăm o listă pornind de la listele anterioare, adăugând și valoarea “USA” etichetată cu denumirea „origine”
filmeUSA <-list(Avatar, Passengers, origine="USA")

#Selecția elementelor din listă prin [] ne returnează alte liste, chiar dacă ar trebui să avem doar o
#valoare simplă. Folosim [[]] pentru a extrage doar elementele simple

#Extragerea elementelor din lista folosindu-se de indecsi
l<-filmeUSA[3] # aici ne-ar trebui doar valoarea string USA

#verificăm cu funcția is.lst() faptul că se returnează o listă
is.list(l)

#selecția cu paranteze duble ne returnează doar valoarea USA
filmeUSA[[3]]

#folosind paranteze simple se extrage o listă de dimensiune 1
length(filmeUSA[1])

#folosind paranteze duble se extrage sublista, va avea deci dimensiunea egală cu cea a sublistei
length(filmeUSA[[1]])

#pentru a extrage numele regizorului de la primul film, întâi extragem sublista corespunzătoare primului film și apoi primul element din ea
filmeUSA[[1]][[1]]

#același lucru folosindu-ne de un vector cu elementele de selecție
filmeUSA[[c(1,1)]] # numele regizorului din primul film
filmeUSA[[c(1,3)]] # bugetul primului film

#extragerea multiplă de elemente cu paranteze duble dintr-o listă formată doar de elemente simple generează eroare
Avatar[[c(1,3)]] # ar fi echivalent cu Avatar[[1]][[3]]

#selecție multiplă de elemente dintr-o listă
filmeUSA[c(1,3)]

#Extragerea elementelor din listă folosindu-ne de nume

#asemănător cu selecția prin index însă ne folosim de numele specificate între ghilimele, pot fi folosite ambele variante de extragere, atât
#cu paranteze simple cât și duble
filmeUSA["origine"] #rezultatul este o listă
filmeUSA[["origine"]] #rezultatul este stringul “USA”

#O modalitate nouă de a extrage elemente din listă este prin folosirea semnului $. Aceasta seamănă
#cu extragerea folosind paranteze duble însă este posibilă doar pe listele etichetate.
#extragerea valorii USA
filmeUSA$origine

#Adăugarea elementelor in lista.

#folosind semnul $
filmeUSA$subtitrare<-"Engleza"

#e echivalent cu următoarea linie de cod
filmeUSA[["subtitrare"]]<-"Engleza"

#putem să adăugăm fără să folosim o etichetă
filmeUSA[[5]]<-"Sci-Fi"

#Ștergerea elementelor din listă se face atribuind valoarea NULL; în cazul în care se șterge un element
#de pe o poziție frontală restul elementelor ce urmează în listă sunt repoziționate
filmeUSA[[5]]<-NULL

#Putem să afișăm elemente din listă cu excepția unora (deci fără să fie șterse propriu zis din listă) dacă
#transmitem sub forma argumentelor negative cele care dorim să nu fie incluse

#afișăm tot conținutul din listă fără primul element
filmeUSA[-1]

#fără primele primul și al doilea element
filmeUSA[c(1,2)]

#Extragerea elementelor din listă folosindu-ne de valorile logice este posibilă doar pentru varianta în
#care ne folosim de paranteze simple.

#afișăm tot conținutul din listă fără primul element
filmeUSA[c(FALSE,TRUE,TRUE)]
#fără primele primul și al doilea element
filmeUSA[c(FALSE,FALSE,TRUE)]