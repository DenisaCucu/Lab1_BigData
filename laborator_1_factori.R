#FACTORI

#structuri de date de tip vector care sunt specializate in pastrarea variabileleor de tip categorie sau variabile discrete

#fie vectorul următor
days<-c("Luni", "Marti","Luni", "Miercuri", "Joi", "Vineri", "Marti", "Miercuri", "Joi", "Sambata", "Duminica")
#creăm factorul
days_factor<-factor(days)

#R realizează 2 operații la apelul funcției factor() asupra unui vector de caractere:
#1) identifică toate categoriile care există – în cazul nostru sunt date de denumirea unică a zilelor din
#săptămână (în Levels) și le sortează alfabetic;
#2) convertește vectorul de caractere într-un vector cu valori întregi pe care îl va folosi la afișare

#avem un factor cu 7 nivele, categorii: Duminica e primul element și va fi codat cu 1, urmează Joi codat cu 2 samd.; acest lucru se vede
#inspectând structura factorului cu funcția str()
str(days_factor) # Factor w/ 7 levels "Duminica","Joi",..: 3 4 3 5 2 7 4 5 2 6 ...

#Dacă dorim să avem o altă ordonare decât cea implicită (alfabetică) putem să o specificăm folosind
#argumentul levels în cadrul funcției factor()
#crearea unui factor cu categorii ordonate
days_factor2<-factor(days, levels=c("Luni","Marti","Miercuri", "Joi", "Vineri", "Sambata", "Duminica"))

#Numele de categorii sunt derivate din denumirile elementelor din vectorul inițial însă putem să avem
#denumiri proprii pe care le specificăm prin argumentul labels
#următorul exemplu crează factorul cu categorii intr-o anumită ordine și în plus redenumește denumirile categoriilor, noile denumiri vor fi
#folosite și în afișarea elementelor
days_factor3<-factor(days, levels=c("Luni","Marti","Miercuri", "Joi", "Vineri", "Sambata", "Duminica"), labels=c("L","Ma", "Mi","J", "V", "S", "D"))

#Dacă nu am folosit la crearea factorului argumentul labels prin care să atribuim propriile denumiri
#putem să le schimbăm și ulterior prin funcția levels(), într-un mod asemănător cum am făcut cu
#funcția names() prin care adăugam etichete unor vectori.

#adăugăm denumiri scurte la primul factor creat
levels(days_factor)<-c("D","J", "L", "Ma", "Mi", "S", "V")
#funcția levels afișează categoriile din factor
levels(days_factor)

#În cazul variabilelor categorice se face deosebirea între cele ordonate și cele neordonate. Exemplul
#anterior nu exprima în mod explicit o relație de mărime între categorii, cu alte cuvinte nu aveam o
#variabila ordonată (cum ar putea fi de exemplu dacă am avea categoriile Small, Medium, Large și am
#dori să exprimăm că Small<Medium<Large).

#Dacă am dori să realizăm o comparație cu elementele unui factor neordonat vom primi un mesaj de avertizare
days_factor[1]<days_factor[2]

#recreăm factorul cu argumentul ordered și apoi realizăm din nou comparația
days_factor4<-factor(days, ordered=TRUE, labels=c("L","Ma", "Mi", "J", "V", "S", "D"))
days_factor4[1]<days_factor4[2]