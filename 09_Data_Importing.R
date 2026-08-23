# R programming - Data Importing

# Crate Student data
students = data.frame(
  id= c(101, 102, 103, 104, 105, 106, 107, 108, 109, 110),
  name = c(
    "Thamizharasu", "Arun", "kumar", "Ravi", "Priya", "Karthik", 
    "Divya", "manoj", "Suresh", "anitha"
    ),
  age = c(21, 22, 21, 23, 20, 22, 21, 24, 23, 20),
  marks = c(85, 72, 90, 65, 88, 76, 95, 68, 55, 92),
  department = c("b.com", "BCA", "B.com", "BBA", "BCA",
                 "B.Com", "BBA", "BCA", "B.Com", "BBA")
)

# Display student data
print(students)

# Export data to CSV file
write.table(
  students,
  "students.csv",
  sep = ",",
  row.names = FALSE,
  col.names = TRUE
)
print("student data exported Successfully")

#import CSV file
data = read.csv("students.csv")

print("student data imported successfully")

#Display imported data
print(data)

# view first six rows
head(data)

#view first ten rows
head(data, 10)

#view last six rows
tail(data)

#check data structure
str(data)

#check numer of rows
total_rows = nrow(data)

print(total_rows)

#check number of columns
total_columns = ncol(data)

print(total_columns)

#display column names
print(names(data))

#display summary of data
summary(data)

# Access student names
print(data$name)

#access student marks
print(data$marks)

# Access Student ages
print(data$age)

# Access Student departments
print(data$department)

#find students Scoring above 80
high_marks = data[data$marks > 80, ]

print("Students scoring above 80")

print(high_marks)

#find students scoring beolw 70
low_marks = data[data$marks < 70,]

print("students scoring below 70")

print(low_marks)

#find passed students 
passed_students = data[data$marks >= 50, ]

print ("passed students")

print(passed_students)

#find failed students 
# Find failed students
failed_students = data[data$marks < 50, ]

print("Failed students")

print(failed_students)

#calcuate average marks
average_marks = mean(data$marks)

print("Average marks")

print(average_marks)

# find highest marks
highest_marks = max(data$marks)

print("highest marks")

print(highest_marks)

#find lowest marks
lowest_marks = min(data$marks)

print ("lowest marks")

print(lowest_marks)

#calculate total marks
total_marks = sum(data$marks)

print("Total marks")

print(total_marks)

# Count students in each department
department_count = table(data$department)

print("Students in each department")
print(department_count)

# Find students above average marks
above_average = data[
  data$marks > average_marks,
]

print("Students above average")

print(above_average)

# Find students below average marks
below_average = data[
  data$marks < average_marks,
]

print("Students below average")

print(below_average)

# Check data type of ID
print(class(data$id))

# Check data type of name
print(class(data$name))

# Check data type of age
print(class(data$age))

# Check data type of marks
print(class(data$marks))

# Check data type of department
print(class(data$department))

# Count total students
student_count = nrow(data)

print("Total number of students")

print(student_count)

# Final message
print("Data Importing and Data Exploration Completed")

