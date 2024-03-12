#DATA FRAMES

#Sunt structuri de date tabelare specializate pentru a păstra date despre observații (rânduri) și
#caracteristicile pentru anumite variabile (coloanele), de tipuri diferite.
#De obicei nu se vor crea data frames în R ci acestea ajung să fie importate dintr-o altă sursă de date,
#de ex fișiere csv, excel, un tabel dintr-o bază de date relațională etc.
#Dacă dorim să creăm manual structuri de tip data frame în R putem folosi funcția data.frame() căruia
#îi transmitem ca argumente vectori de aceeași dimensiune ce corespund variabilelor /coloanelor.
#creăm întâi trei vectori ce reprezintă caracteristicile pentru fiecare variabilă/coloană din data frame, cu aceeași dimensiune, altfel avem
#eroare

nume<-c("Ana","Bob", "Andrei", "Lucia", "Alex")
varsta<-c(30,32,28,27,29)
fumator<-c(FALSE,FALSE,FALSE,TRUE,TRUE)
df<-data.frame(nume,varsta,fumator) #numele coloanelor din setul de date va fi preluat din numele acestor variabile

#pentru a specifica alte nume putem folosi aceeași tehnica de la vectori și liste
#folosind funcția names()
names(df)<-c("Nume", "Varsta", "Fumator")
#trasnmițând numele în argumente
df<-data.frame(Nume=nume, Varsta=varsta, Fumator=fumator)

#Selecția elementelor din data frames
#Pentru a selecta valoarea unui singur element din data frame, de pe o anumită linie și coloană putem
#folosi aceeași sintaxă care o foloseam la extragerea elementelor din matrice: paranteze simple
#pătrate cu doi indecși în interior

#extragem varsta lui Andrei, ce se află pe linia 3 și coloana 2
df[3,2]

#putem să ne folosim și de numele coloanelor când le referim, același exemplu folosind denumirea coloanei
df[3, "Varsta"]

#La fel ca în cazul matricelor putem să omitem unul din indecși pentru a obține o linie sau o coloană
#întreagă

#extragem toate informațiile despre Andrei
df[3,]

# rezultatul e un data frame cu un singur rând/ observație
is.data.frame(df[3,]) #TRUE

#rezultatul poate fi un vector daca se returnează date de același tip
is.data.frame(df[,2]) #FALSE
is.vector(df[,2]) #TRUE

#Dacă se specifică un singur index acesta va fi considerat corespunzător coloanelor

#afișează doar coloana Nume
df[1]

#la fel ca în cazul matricei putem să transmitem doi vectori corespunzători dimensiunilor m și n în care să specificăm care linii și care
#coloane să fie extrase, de pe liniile 3 și 5 si coloanele Varsta și Fumator
df[c(3,5),c("Varsta", "Fumator")]

#Elementele din data frame pot fi selectate și cu sintaxă preluată de la liste, respectiv [], [[]], sau $. A
#se face diferenta între structurile de date returnate de sintaxa [] (structuri de tip data frame) față de
#cele cu [[]] sau semnul $ (vectori).

#extragerea elementelor de pe coloana Varstă, următoarele comenzi returnează același rezultat, un vector cu elementele Varsta
df$Varsta
df[["Varsta"]]
df[[2]]

#Extinderea unei structuri data frame: adăugare de linii sau coloane noi.
#La fel ca în cazul listelor putem folosi semnul $ sau [[]]

#adăugarea coloanei greutate
greutate<-c(63,97,87,60,70)
df$Greutate <-greutate
df[["Greutate"]]<-greutate

#Putem prelua sintaxa de la matrice pentru adăugarea unei coloane noi, respectiv a unei linii noi, cu
#funcțiile cbind() și rbind()
#adăugarea coloanei înălțime
Inaltime<-c(173,197,189,160,170) #folositi litera mare I la cuvântul Inălțime pentru a se potrivi cu restul numelor de coloană
cbind(df,Inaltime) #rezultatul e afișat pe ecran cu noua coloană însă nu este adăugat la setul nostru de date
df<- cbind(df,Inaltime) #se adaugă și coloana Inaltime, numele coloanei este preluat de la numele variabilei

#adăugarea unei linii noi
ted<-data.frame(Nume="Ted", Varsta=67,Fumator=TRUE,Greutate=66,Inaltime=175) # e necesara folosirea structurii data frame pt ca

#avem date de tipuri diferite, de asemenea este necesară specificarea denumirilor de coloane
df<-rbind(df,ted)
#Putem modifica și elementele existente deja în data frame

#schimbăm vârsta pentru Andrei
df[3,2] <-32

#Sortarea datelor în data frame
#Folosim funcția sort() pentru sortări date din data frame crescător sau descrescător, sau funcția
#order() însă acestea nu vor fi realizate peste datele din dataframe. Pentru sortare în ordine
#decrescătoare adăugăm argumentul decreasing=TRUE

#sortare alfabetică după nume
sort(df$Nume)

#sortare crescătoare după Vârstă
sort(df$Vârstă)

#sortare decrescătoare după Greutate
sort(df$Greutate, decreasing=TRUE)

#Funcția order() ne returnează un vector ce conține pozițiile ordonate a fiecărui element. Aceste
#poziții vor putea fi folosite pentru a extrage elementele din setul de date într-o anumită ordine: cu
#alte cuvinte ordonate după un anumit criteriu

#ordonăm după Varsta și păstrăm indecsii poziíilor în variabila poz
poz<-order(df$Varsta)

#afișăm datele ordonate după vârstă
df[poz,]

#ordonare după mai multe criterii, întâi ordonează crescător după vârstă și în caz de aceeași valoare ordonează crescător după Nume
order(df$Varsta, df$Nume)
