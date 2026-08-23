# R Programming - R Libraries

# install Packages
# install.packages("ggplot2")
# install.packages("dplyr")
# install.packages("tidyr")

# Load R libraries
library(ggplot2)
library(dplyr)
library(tidyr)

# Display message
print("R Libraries Loaded Successfully")

#create sample date 
data = data.frame(
  name = c ("Thamizharasu","Arun","Kumar","ravi"),
  marks = c (85, 72 ,90 , 65)
)

#display data
print(data)

#data manipulation using dplyr
passed_students = filter(data, marks >= 50)

print(passed_students)

# Students scoring above 80 
top_students = filter(data,marks > 80)

print(top_students)

#data visualization using ggplot2
ggplot(data, aes(x =name, y = marks)) + 
  geom_col()

#R package Examples
# ggplot2       - data visulization
# dplyr         - data manipulation
# tidyr         - Data Cleaning And Reshaping
# rmarkdown     _ Reports and Documents
# dbplyr        _ Database Interaction
# plumber       - Web Apis
# flexdashboard _ Interactive Dashboards

