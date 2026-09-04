# R Programming - Data Filtering

# Create Student Data
students = data.frame(
  id = c(101, 102, 103, 104, 105, 106, 107, 108, 109, 110),
  name = c(
    "Thamizharasu", "Arun", "Kumar", "Ravi", "Priya",
    "Karthik", "Divya", "Manoj", "Suresh", "Anitha"
  ),
  age = c(21, 22, 21, 23, 20, 22, 21, 24, 23, 20),
  marks = c(85, 72, 90, 65, 88, 76, 95, 68, 55, 92),
  department = c(
    "B.Com", "BCA", "B.Com", "BBA", "BCA",
    "B.Com", "BBA", "BCA", "B.Com", "BBA"
  )
)

# Display complete data
print(students)

# Filter students scoring above 80
high_marks = students[students$marks > 80, ]

print("Students scoring above 80")
print(high_marks)

# Filter students scoring below 70
low_marks = students[students$marks < 70, ]

print("Students scoring below 70")
print(low_marks)

# Filter students who passed
passed_students = students[students$marks >= 50, ]

print("Passed Students")
print(passed_students)

# Filter students who failed
failed_students = students[students$marks < 50, ]

print("Failed Students")
print(failed_students)

# Filter students aged above 21
age_filter = students[students$age > 21, ]

print("Students aged above 21")
print(age_filter)

# Filter BCA students
bca_students = students[students$department == "BCA", ]

print("BCA Students")
print(bca_students)

# Filter B.Com students
bcom_students = students[students$department == "B.Com", ]

print("B.Com Students")
print(bcom_students)

# Filter BBA students
bba_students = students[students$department == "BBA", ]

print("BBA Students")
print(bba_students)

# Filter students with marks between 70 and 90
marks_range = students[
  students$marks >= 70 & students$marks <= 90,
]

print("Students with marks between 70 and 90")
print(marks_range)

# Filter BCA students with marks above 70
bca_high_marks = students[
  students$department == "BCA" & students$marks > 70,
]

print("BCA students scoring above 70")
print(bca_high_marks)

# Count filtered students
high_mark_count = nrow(high_marks)

print("Number of students scoring above 80")
print(high_mark_count)

# Find average marks
average_marks = mean(students$marks)

print("Average Marks")
print(average_marks)

# Filter students above average
above_average = students[
  students$marks > average_marks,
]

print("Students scoring above average")
print(above_average)

# Filter students below average
below_average = students[
  students$marks < average_marks,
]

print("Students scoring below average")
print(below_average)

# Data Filtering Completed
print("Data Filtering Completed")