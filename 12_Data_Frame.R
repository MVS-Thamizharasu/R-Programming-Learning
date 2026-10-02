# R Data Frame Examples

#creats a Dta Frame
students <- data.frame(
  Name = c("Arun", "kaviya", "Mvs", "priya", "Ravi"),
  Marks =  c(68, 98, 67, 89, 57),
  Age = c(20, 18, 21, 19, 20)
)

#display data frame
students

# viwe first rows
head(students)

#view last rows
tail(students)

#get column names
names(students)

#get number of rows
nrow(students)

#get number of columns
ncol(students)

#get structure
str(students)

#access a column
students$Nmae

#Access Marks column
students$Marks