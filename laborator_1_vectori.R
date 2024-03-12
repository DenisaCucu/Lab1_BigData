#VECTORI

#pentru a crea un vector folosim c()
studenti<-c("Ana","Cristina","Bob")

#indexarea elementelor
studenti[1] #[1] "Ana"

#accesarea elementelor din vector prin enumerare a indecsilor
studenti[c(1,3)] #[1] "Ana" "Bob"
studenti[c(3,1)] #[1] "Bob" "Ana"

#creare vector cu note
note<-c(10,6,7,8,6)

#vectorii pot primi etichete care pot fi de lungime diferita
#adaugarea de etichete se face un functia names si obtinem un named vector
discipline<-c("informatica","matematica", "engleza","contabilitate", "finante")
names(note)<-discipline

#se poate crea si dintr-un singur pas un vector cu etichete
altenote<-c(informatica=9, matematica=5, engleza=8, contabilitate=7)

#accesarea unei valori folosindu-se de eticheta sau cheia atasata
note["informatica"] #informatica 10

#toate valorile
note[]
#informatica    matematica       engleza contabilitate 
#10             6             7             8 
#finante 
#6 

#accesare valori de  la elementul 2 la 3
note[2:3]
#matematica    engleza 
#6          7 

#testăm dacă variabile create sunt vectori; chiar și variabila A este un vector de dimensiune 1
is.vector(studenti) #TRUE
is.vector(note) #TRUE
is.vector(A) #TRUE
length(A) #1

#operatiile cu vectori se aplica element cu element
note+1
#informatica    matematica       engleza contabilitate 
#11             7             8             9 
#finante 
#7 