
# data <- read.csv(file.choose())

# data <- read.csv("C:/Users/Ntakirutimana Elyssa/Desktop/20252MBI045_20252MBI034_20252MBI041/students_attendance.csv")
# 
# View(data)
# str(data)
# 
# ++?head(data)      # first 6 rows in the console
# str(data)       # column names and types
# summary(data)   # quick statistics for each column
# nrow(data)      # number of rows
# names(data)     # column names
# str(data)
dob<-as.Date("1996-08-24")
today<-as.Date("2026-10-25")
difftime(today,dob,units = "days")

# install.packages("RMySQL",dependencies = TRUE)

# library(DBI)
# library(RMySQL)
# 
# db_user<- 'root'
# db_password<- '123?'
# db_name<-'ntakirutimana'
# db_table<- 'vat000000326_transaction_list'
# db_host<-'localhost'
# db_port<- 3306
# myConnection<-dbConnect(MySQL(),user=db_user,password=db_password,
#                         dbname=db_name,host=db_host,port=db_port)
# 
# 
# query <-paste0("select* from ",db_table)
# runquery<-dbSendQuery(myConnection,query)
# df <- fetch(runquery,n=-1)
