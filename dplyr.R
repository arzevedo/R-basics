#PACOTE
if(require(dplyr)==F) install.packages("dplyr")

#DADOS
dados=read.csv("http://mwstat.com/andersonara/IVD/dados1.csv",
               sep=";",stringsAsFactors = T)
names(dados)

#FUNÇÃO SELECT
select(dados,Q1)
select(dados,Q1,Q9)
select(dados,c(1,9))
select(dados,Q1:Q9)
select(dados,-Q3)
select(dados,-Q3,-Q5)
select(dados,-c(Q3,Q5))
select(dados,-c(3,5))

#FUNÇÃO RENAME
rename(dados,quest1=Q1,quest2=Q2)

#UTILIZANDO O COMANDO PIPE %>%
dados %>% select(Q1)
dados %>% rename(quest1=Q1)