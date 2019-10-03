#---- This is modeul for R to sql lite ----
#install packages

install.packages("DBI")
install.packages("RSQLite")

library(DBI)
setwd("C:/my_project")

#download the SQLLIte database file in hosting on Github
download.file("https://github.com/KristenKehrer/datamovesme-sqlcourse/raw/gh-pages/assets/sqlcourse.db", "./sqlcourse.db", mode ="wb")

#open a connection to the SQLite database

con <- dbConnect(RSQLite::SQLite(), "./sqlcourse.db")

#list all of the tables

dbListTables(con)

#read the salescall table

dbReadTable(con, "salescall")

#run the fullowing quiery:

queryResult <- dbSendQuery(con, "select max(customer_id) from salescall")
dbFetch(queryResult)

####  https://github.com/heezt147/test.git #####







