#MATRICE

#pot contine doar aceleasi tipuri de valori
#o matrice se poate crea cu functia matrix() care are ca intrare
#un vector cu valorile ce pot forma continutul matricei si cel putin o dimensiune
#nrow = nr linii, ncol= nr coloane; daca se specifica doar unul din aceste argumente, R il va deduce automat pe celalalt
#implicit valorile sunt completate pe coloane

#creare matrice de 2x3 cu elementele 1:6
d <-matrix(1:6, nrow=2)

#prin functia byrow specificam ca dorim completarea valorilor pe linie
matrix(1:6, nrow=2, byrow=TRUE)
#       [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6

#completare ciclica a elementelor matricei
#se refolosesc datele de intrare pentru a completa toate valorile din matrice
matrix(1:3, nrow=2, ncol=3)
#       [,1] [,2] [,3]
#[1,]    1    3    2
#[2,]    2    1    3

#daca nu sunt refolosite toate valorile va aparea un warning
matrix(1:4, nrow=2, ncol=3)
#     [,1] [,2] [,3]
#[1,]    1    3    1
#[2,]    2    4    2
#Warning message:
  #In matrix(1:4, nrow = 2, ncol = 3) :
  #data length [4] is not a sub-multiple or multiple of the number of columns [3]

#alte metode de creare a matricei prin functiile cbind(), rbind()
#putem folosi aceste functii pentru a  adauga linii sau coloane la o matrice existenta
cbind(1:3, 1:3)
#       [,1] [,2]
#[1,]    1    1
#[2,]    2    2
#[3,]    3    3

rbind(1:3,1:3)
#       [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    1    2    3

#adaugare coloane la matricea m
m<-matrix(1:6,nrow=2)
m<-cbind(m,7:8)

#pentru a adauga etichete folosim rownames() colnames()
rownames(m)<-c("x1","x2")
colnames(m)<-c("y1","y2", "y3", "y4")

#selectie elemente din matrice

# extragem ultimul element al matricei
m[2,3] #6
#prin omiterea indexului de linie sau coloana extragem vectori - extragem ultima linie din matrice
m[2,] #2 4 6 8
#extragem prima coloana din matrice
m[,1] #1 2
#daca transmitem doar un singur număr x, R va număra elementele din matrice pe coloană si va returna al x-lea număr
m[5] #5

#se pot specifica elemente multiple prin enumerarea lor printr-un vector

#extrage de pe randul doi, al doilea si al treilea element
m[2,c(2,3)] #4 6
m[2,2:3] #4 6

#OBS. nu putem selecta elemente din matrice ce nu au in comun vreun index de linie sau coloana; 
#de ex primul element de pe prima linie si ultimul element de pe ultima linie:

#se returnează o submatrice formată din liniile specificate prin primul vector si coloanele specificate de al doilea vector
m[1:2,1:2]
#   y1 y2
#x1  1  3
#x2  2  4

#Selecția multiplă a elementelor mai poate fi făcută și cu ajutorul vectorilor cu valori logice, aplicând
#aceleași reguli:

#selecție de pe linia 2 a elementelor de pe a 2 si a treia coloana, specificăm sub forma a doi vectori corespunzători dimensiunilor m și n
m[c(FALSE,TRUE),c(FALSE,TRUE,TRUE)] # 4 6
  
#Selecția elementelor din matrice poate fi făcută folosind numele atribuite liniilor și coloanelor în
#același mod în care am folosit indecșii dar adăugând ghilimele
  
#Operatii cu matrice - operatii element cu element

#adunarea randurilor si a coloanelor in doi vectori ce contin sumele pe randuri/coloane:
colSums(m) #3 7 11 15
rowSums(m) #16 20

#dublarea elementelor din matrice m
m*2

#operațiile cu vectori- se aplică de asemenea element cu element pe coloana; in cazul in care dimensiunea vectorului este mai mica decât
#a matricei se realizează reciclarea
#scăderea nr 1 din primul element, nr 2 din al doilea element de pe prima coloana etc.
m-c(1,2)

#operațiile cu alte matrici – de asemenea element cu element
#se va inmulti elementul m[1,1] cu elementul m[1,1], elementul m[1,2] cu elementul m[1,2] si asa mai departe
m*m

#functia dim() ne da dimensiunea matricei
dim(m)