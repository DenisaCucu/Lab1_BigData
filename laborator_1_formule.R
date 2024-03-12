#Formule

#au rolul de a exprima un model statistic ce se stabileste intre o variabila dependenta si alte variabile independente

#atribuire formule la variabile
c<-Y~X  #Y variabila dependenta, X variabila independenta
d<-Y~2*X+e # ~ operatorul tilda ce separa doua variabile

#Avantaj formule
#pot fi definite folosind variabile care inca nu au fost inca initializare
#!variabilele Y cat si X nu exista inca si nu sunt create prin folosirea lor in formule
#ne permite ca apelul functiilor sa contina referinte la variabile fara ca acestea sa fie evaluate