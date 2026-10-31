
 data <- read.csv("C:/Users/Ntakirutimana Elyssa/Documents/R_Project/R_project_homework/students_academic.csv")

 View(data)
 str(data)

 head(data)     # first 6 rows in the console
 str(data)       # column names and types
 summary(data)   # quick statistics for each column
 nrow(data)      # number of rows
 names(data)     # column names
 str(data)
dob<-as.Date("1996-08-24")
today<-as.Date("2026-10-25")
difftime(today,dob,units = "days")

 install.packages("RMySQL",dependencies = TRUE)

 library(DBI)
 library(RMySQL)

 db_user<- 'root'
 db_password<- '123?'
 db_name<-'ntakirutimana'
 db_table<- 'vat000000326_transaction_list'
 db_host<-'localhost'
 db_port<- 3306
 myConnection<-dbConnect(MySQL(),user=db_user,password=db_password,
                         dbname=db_name,host=db_host,port=db_port)


 query <-paste0("select* from ",db_table)
 runquery<-dbSendQuery(myConnection,query)
 df <- fetch(runquery,n=-1)

 # Import data from JSON (GitHub sample data)
 # install.packages("jsonlite")   # run once if jsonlite is not installed
 library(jsonlite)

 json_url <- "https://raw.githubusercontent.com/Kundan-Rwanda/sample-sales-data/refs/heads/main/countries.json"
 countries <- fromJSON(json_url)

 View(countries)
 head(countries)       # first 6 rows
 str(countries)        # column names and types
 summary(countries)    # quick statistics for each column
 nrow(countries)       # number of rows (countries)
 names(countries)      # column names

 countries[countries$Region == "SUB-SAHARAN AFRICA", c("Name", "Population")]
 countries[countries$Name == "Rwanda", ]

 # Import data from a .txt file (tab separated)
 countries_txt <- read.delim("C:/Users/Ntakirutimana Elyssa/Documents/R_Project/R_project_homework/countries.txt",
                             check.names = FALSE,   # keep column names like "Area (sq. mi.)"
                             na.strings = "")       # so Namibia's code "NA" is not read as missing

 View(countries_txt)
 head(countries_txt)
 str(countries_txt)
 summary(countries_txt)
 nrow(countries_txt)
 names(countries_txt)
